const fs = require("fs");
const os = require("os");
const path = require("path");
const { execSync } = require("child_process");

// Change directory to the project folder to check if the dependencies are installed
process.chdir(path.join(os.homedir(), "Repos/Text-to-Speech"));
if (!fs.existsSync("node_modules") || !fs.existsSync("package-lock.json")) {
	try {
		console.log("Text-to-Speech dependencies not found. Installing dependencies...");
		execSync("npm install --silent", { stdio: "inherit" });
		console.log("npm install completed.");
	} catch (error) {
		console.error("Error installing dependencies:", error.message);
		process.exit(1);
	}
}

// Import third-party libraries
const tts = require("google-tts-api");
const axios = require("axios");
const playSound = require("play-sound");

// Constants
const OUTPUT_FOLDER = "output";

// Function to convert text to speech and save as an audio file
async function convertTextToSpeech({ text, outputFile, deleteAfterPlay }) {
	try {
		// Check if the file already exists
		const outputPath = path.join(OUTPUT_FOLDER, outputFile);

		// If the file doesn't exist, download it
		if (!fs.existsSync(outputPath)) {
			const audioUrl = tts.getAudioUrl(text, {
				lang: "en",
				slow: false,
				host: "https://translate.google.com",
			});

			console.log("Downloading audio file from:", audioUrl);
			const response = await axios.get(audioUrl, { responseType: "arraybuffer" });
			console.log("Audio file downloaded.");

			console.log("Checking if output folder exists...");
			if (!fs.existsSync(OUTPUT_FOLDER)) {
				console.log("Ouput folder not found. Creating it...");
				fs.mkdirSync(OUTPUT_FOLDER, { recursive: true }); // Ensure recursive creation
				console.log("Output folder created.");
			} else {
				console.log("Output folder already exists. Skipping creation.");
			}

			console.log("Writting audio file...");
			fs.writeFileSync(outputPath, Buffer.from(response.data));
			console.log(`Audio file saved to: ${outputPath}`);
		} else {
			console.log("Audio file already exists. Skipping download.");
		}

		const player = playSound((opts = {}));
		console.log(`Playing audio: "${text}"`);
		player.play(outputPath, (err) => {
			if (err) {
				console.error("Error playing audio:", err.message);
			} else {
				console.log("Audio finished playing.");
			}

			// If deleteAfterPlay is true, delete the audio file
			if (deleteAfterPlay) {
				console.log("Deleting audio file...");
				fs.unlinkSync(outputPath);
				console.log("Audio file deleted.");
			}
		});
	} catch (error) {
		console.error("Error converting text to speech:", error.message);
		process.exit(1);
	}
}

// Handle command line arguments
const args = process.argv.slice(2);
if (args.length < 1) {
	console.error("Please provide text to convert.");
	console.error('Usage: node src/main.js "Text to convert" "outputFileName" deleteAfterPlay');
	console.error("outputFileName and deleteAfterPlay are optional");
	console.error(
		"\nExample: node src/main.js 'Hello World' hello_world.mp3\nThis will play the audio and keep the file"
	);
	console.error(
		"\nExample: node src/main.js 'Hello World' hello_world.mp3 deleteAfterPlay\n This will play the audio and delete the file after playing"
	);
	process.exit(1);
}

const textToConvert = args[0];
const outputFileName = args[1] || args[0].replace(/[^a-zA-Z0-9]/g, "_");

convertTextToSpeech({
	text: textToConvert,
	outputFile: `${outputFileName}.mp3`,
	deleteAfterPlay: args[2] === "deleteAfterPlay",
});
