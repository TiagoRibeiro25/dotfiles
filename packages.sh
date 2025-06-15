# Warning: this contains all the packages I use, not just the ones needed for the dotfiles to work
# This script is meant to be run on a fresh Arch Linux installation

echo "Checking if yay is installed..."

# Check if yay is installed
if ! command -v yay &> /dev/null
then
	echo "yay could not be found. Please install yay first."
	exit 1
fi

echo "Yay is installed, proceeding with the script..."

# Update the system
echo "Updating the system..."
yay -Syu --noconfirm

echo "Installing packages..."

yay -S --noconfirm --needed \
	accountsservice \
	alsa-firmware \
	alsa-plugins \
	alsa-utils \
	anydesk-bin \
	appimagelauncher \
	aspell \
	autenticacao-gov-pt-bin \
	auto-cpufreq \
	b43-fwcutter \
	baobab \
	base \
	base-devel \
	bash-completion \
	bat \
	beekeeper-studio-bin \
	bind \
	blueman \
	bluez \
	bluez-cups \
	bluez-obex \
	bluez-tools \
	bluez-utils \
	bottles \
	brightnessctl \
	btop \
	btrfs-progs \
	cachyos-ananicy-rules-git \
	cantarell-fonts \
	chaotic-keyring \
	chaotic-mirrorlist \
	clipse-bin \
	cryptsetup \
	cups \
	cups-browsed \
	cups-filters \
	cups-pdf \
	ddcui \
	device-mapper \
	diffutils \
	dkms \
	dmidecode \
	dmraid \
	dnsmasq \
	docker \
	docker-compose \
	dosfstools \
	downgrade \
	duf \
	e2fsprogs \
	efibootmgr \
	efitools \
	envycontrol \
	eog \
	ethtool \
	exfatprogs \
	eza \
	f2fs-tools \
	fastfetch \
	ffmpegthumbnailer \
	file-roller \
	firefox \
	firewalld \
	foomatic-db \
	foomatic-db-engine \
	foomatic-db-gutenprint-ppds \
	foomatic-db-nonfree \
	foomatic-db-nonfree-ppds \
	foomatic-db-ppds \
	ghostscript \
	git \
	github-desktop \
	glances \
	gnome-calculator \
	gnome-disk-utility \
	gnome-font-viewer \
	gnome-keyring \
	gnome-system-monitor \
	google-chrome \
	goverlay \
	gpu-screen-recorder-gtk \
	grub \
	gsfonts \
	gst-libav \
	gst-plugin-pipewire \
	gst-plugins-bad \
	gst-plugins-ugly \
	gutenprint \
	gvfs-smb \
	gvfs-wsdd \
	haveged \
	hdparm \
	hplip \
	htop \
	hwdetect \
	hwinfo \
	hypridle \
	hyprland \
	hyprlock \
	hyprpaper \
	hyprpicker \
	hyprshot \
	inetutils \
	intel-ucode \
	inxi \
	iptables-nft \
	iwd \
	iwgtk \
	jfsutils \
	keepassxc \
	kitty \
	less \
	lib32-libsamplerate \
	lib32-mangohud \
	lib32-nvidia-utils \
	libdvdcss \
	libgsf \
	libopenraw \
	libwnck3 \
	linux \
	linux-firmware \
	linux-headers \
	logrotate \
	lsb-release \
	lsscsi \
	lvm2 \
	ly \
	man-pages \
	mangohud \
	mate-polkit \
	mdadm \
	megasync-bin \
	meld \
	mesa-utils \
	microsoft-edge-stable-bin \
	mkinitcpio \
	mkinitcpio-firmware \
	modemmanager \
	mtools \
	nano \
	nano-syntax-highlighting \
	nbfc-linux \
	nbfc-qt-git \
	nemo \
	nemo-fileroller \
	nemo-share \
	netctl \
	network-manager-applet \
	networkmanager-iwd \
	networkmanager-openconnect \
	networkmanager-openvpn \
	nfs-utils \
	nilfs-utils \
	nodejs \
	noisetorch-bin \
	noto-fonts \
	noto-fonts-cjk \
	noto-fonts-emoji \
	noto-fonts-extra \
	nss-mdns \
	ntfs-3g \
	ntp \
	nvidia-open \
	nvidia-prime \
	nvidia-settings \
	nvidia_oc \
	nvtop \
	nwg-displays \
	nwg-look \
	obs-studio \
	onlyoffice-bin \
	openrgb \
	openssh \
	os-prober \
	pacman-contrib \
	papers \
	parsec-bin \
	pavucontrol \
	perl \
	pipewire-alsa \
	pipewire-jack \
	pipewire-pulse \
	pkgfile \
	playerctl \
	plocate \
	poppler-glib \
	postman-bin \
	protonhax \
	protontricks-git \
	protonup-qt \
	pv \
	python \
	python-defusedxml \
	python-packaging \
	python-pillow \
	python-pyqt5 \
	python-pyqt6 \
	python-reportlab \
	qt5ct \
	qt6ct \
	rebuild-detector \
	reflector \
	rofi-wayland \
	rofimoji \
	rsync \
	rtkit \
	rustdesk-bin \
	s-nail \
	samrewritten-git \
	sane \
	seahorse \
	sg3_utils \
	simple-scan \
	smartmontools \
	sof-firmware \
	splix \
	spotify-adblock-git \
	steam \
	stremio \
	stress \
	sudo \
	swaync \
	swayosd-git \
	sysfsutils \
	system-config-printer \
	systemd-services-manager \
	systemd-sysvcompat \
	texinfo \
	throttled \
	thunderbird \
	timeshift \
	tk \
	tldr \
	tlpui \
	trash-cli \
	ttf-bitstream-vera \
	ttf-dejavu \
	ttf-liberation \
	ttf-ms-win11-auto \
	ttf-opensans \
	unrar \
	unzip \
	update-grub \
	upower \
	usb_modeswitch \
	usbutils \
	ventoy-bin \
	vesktop \
	vi \
	video-trimmer \
	visual-studio-code-bin \
	waybar \
	webapp-manager \
	wget \
	which \
	wine-gecko \
	wine-mono \
	wine-nine \
	wireplumber \
	wpa_supplicant \
	wsdd \
	xdg-desktop-portal-gtk \
	xdg-desktop-portal-hyprland \
	xdg-user-dirs \
	xdg-utils \
	xed \
	xf86-input-libinput \
	xfsprogs \
	xl2tpd \
	xorg-server \
	xorg-xdpyinfo \
	xorg-xhost \
	xorg-xinit \
	xorg-xinput \
	xorg-xkill \
	xorg-xrandr \
	xterm \
	yad \
	yay \
	youtube-music-bin \
	zapzap \
	zed \
	zip \
	zoxide \
	zsh \

echo "All packages installed successfully!"

echo "Cleaning up..."
# Clear pacman cache
yay -Scc --noconfirm

echo "Enabling services..."

# Enable services
systemctl enable \
	ananicy-cpp \
	avahi-daemon \
	auto-cpufreq \
	bluetooth \
	cups \
	firewalld \
	ly \
	smb \
	nmb \
	sshd \
	throttled \
	tlp.service \
	wsdd \

echo "Services enabled successfully!"

# Ask for reboot
read -p "Do you want to reboot now? (y/n) " answer
if [[ $answer == [Yy] ]]; then
	echo "Rebooting..."
	reboot
else
	echo "You can reboot later to apply the changes."
fi
