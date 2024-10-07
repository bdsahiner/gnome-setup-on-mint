### To check Ubuntu extensions

Your locally installed gnome Shell extensions, i.e., these that are installed for your user only, can be listed with the commmand:

`ls ~/.local/share/gnome-shell/extensions/`

You can find out which extensions are enables by querying a dconf setting:

`gsettings get org.gnome.shell enabled-extensions`

System wide installed gnome-shell extensions are listed with the command

`ls /usr/share/gnome-shell/extensions/`

### Installing Ubuntu Desktop Settings

By installing this package, everything is bundled together, making the process simple and fast. You get a consistent and pre-configured GNOME experience similar to what you would find on a fresh Ubuntu GNOME installation. It also ensures better integration of all GNOME components.

`sudo apt install ubuntu-gnome-desktop`

When you install `ubuntu-gnome-desktop`, you're installing a meta-package, which pulls in a complete and **ready-to-use** GNOME environment, including:
- **GNOME Shell** (the core GNOME interface)
- **GNOME Session** (manages the desktop session)
- **GDM3** (the GNOME Display Manager for login screens)
- **GNOME Terminal** (terminal emulator)
- **Nautilus** (file manager)
- **GNOME Settings** (for configuring the desktop)
- **GNOME Applications** (such as Calendar, Music, Maps, etc.)
- Additional GNOME utilities, theming, and configuration tools

### Installing Gnome Manually

##### Install GNOME Desktop Environment
As first, install the core GNOME desktop components to replace Cinnamon.

During installation, if prompted, select **GDM3** as the display manager.

`sudo apt update`

`sudo apt install gnome-shell gnome-session gdm3 gnome-terminal`

- **gnome-shell**: The core interface of GNOME.
- **gnome-session**: Manages GNOME sessions.
- **gdm3**: GNOME’s default display manager for logging in.
- **gnome-terminal**: The terminal emulator for GNOME.

#### Managers
##### File Manager
Linux Mint uses **Nemo** by default, but GNOME uses **Nautilus** as its file manager.

`sudo apt install nautilus`

To remove previous manager:

`sudo apt remove --purge nemo nemo-fileroller`

##### Bluetooth Manager
Linux Mint uses **Blueman** by default. GNOME’s Bluetooth manager is **gnome-bluetooth**. 

`sudo apt install gnome-bluetooth`

To remove previous manager:

`sudo apt remove --purge blueman`

##### Sound Manager
Mint uses **Cinnamon settings** for sound, while GNOME uses **gnome-control-center** to manage sound.

`sudo apt install gnome-control-center`
`
To remove previous manager:

`sudo apt remove --purge cinnamon-settings-daemon`

##### Network Manager
GNOME uses **network-manager-gnome** for handling network connections, which works with NetworkManager (the same backend Mint uses).

`sudo apt install network-manager-gnome`

##### Monitor Manager
GNOME uses its own display manager and settings, managed through **gnome-control-center**(which you have already installed #SoundManager)

`sudo apt remove --purge cinnamon-settings-daemon`

##### Power Management
GNOME’s power management tool is **gnome-power-manager**.

`sudo apt install gnome-power-manager`

##### Software Center
GNOME uses **gnome-software** for managing software installation, rather than Mint’s **mintinstall**.

`sudo apt install gnome-software`

To remove previous manager:

`sudo apt remove --purge mintinstall`

##### Mint/Cinnamon Packages
To remove any lingering Cinnamon or Mint-specific packages:

`sudo apt remove --purge cinnamon* mintinstall* mintupdate*`

`sudo apt autoremove --purge`
