# Live World Map for Linux

## What is this?

A script that uses `xplanet` to make your desktop wallpaper a live map of the world using NASA imagery.

![Screenshot on Fedora - MATE Desktop environment](docs/screenshot.png)

## How do I use this?

Assuming a setup of Fedora + MATE:

1. Clone the repository  
    ```bash
    cd ~/gitrepos # or wherever you keep this stuff
    git clone -v \
    	https://github.com/blairw/liveworldmap-linux
    ```
2. Open your crontab  
	```bash
	export EDITOR=nano # I don't like vim.. sorry..
	crontab -e
	```
3. Put in an entry for the script
  ```bash
  */5 * * * * /home/blair/gitrepos/liveworldmap-linux/cronjob.sh
  ```

## I'm not using Fedora + MATE

- If you're using GNOME you should be able to just edit `cronjob.sh` to suit your needs
- [cmcmahan](https://github.com/cmcmahan/Xplanet)'s repo for macOS (I haven't tested it)

## Acknowledgements

- **Day imagery** `world.topo.bathy.200412.3x5400x2700.jpg`:  
	NASA (2004), 'Blue Marble Next Generation', _Visible Earth_, https://visibleearth.nasa.gov/view.php?id=73909
- **Night imagery** `dnb_land_ocean_ice.2012.3600x1800.jpg`:
  NASA (2012), 'Night Lights 2012 - Flat Map', _Visible Earth_, https://visibleearth.nasa.gov/view.php?id=79765 
