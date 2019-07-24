# Live World Map for Mac and Linux

## What is this?

A script that uses `xplanet` to make your desktop wallpaper a live map of the world using NASA imagery.

![Screenshot on macOS](docs/screenshot-mac.png)

## How do I use this?

1. Install `xplanet` (use the correct line for your OS):  
	```bash
	sudo dnf install -y xplanet # Fedora
    brew install xplanet   # MacOS
	```
2. Clone the repository  
    ```bash
    cd ~/00blair/gitrepos # or wherever you keep this stuff
    git clone -v \
    	https://github.com/blairw/liveworldmap
    ```
3. Edit the config files `config/config.conf` and `cronjob.sh` to point the correct paths for your setup (and change the `myresolution` variable in the latter, to suit your screen!)
4. Open your crontab  
	```bash
	export EDITOR=nano # I don't like vim.. sorry..
	crontab -e
	```
5. Put in an entry for the script
    ```bash
    PATH=/usr/local/bin:/usr/bin:/bin
    */5 * * * * /Users/blair/00blair/gitrepos/liveworldmap/cronjob.sh
    ```
(You only need that first line with `PATH` if you're using Mac.)

Happy wallpaper-cronning! :)

## I'm using Linux, but not Fedora

![Screenshot on Linux](docs/screenshot-linux.png)

- If you're using MATE or GNOME you should be able to just edit `cronjob.sh` to suit your needs and use `apt-get` or whatever instead of `dnf`.

## I'm using Windows

I'm sorry, this doesn't work on Windows right now. If you can get it working, that would be amazing!

## Acknowledgements

- **Day imagery** `world.topo.bathy.200412.3x5400x2700.jpg`:  
	NASA (2004), 'Blue Marble Next Generation', _Visible Earth_, https://visibleearth.nasa.gov/view.php?id=73909
- **Night imagery** `dnb_land_ocean_ice.2012.3600x1800.jpg`:  
  NASA (2012), 'Night Lights 2012 - Flat Map', _Visible Earth_, https://visibleearth.nasa.gov/view.php?id=79765 
