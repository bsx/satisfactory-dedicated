# Satisfactory Dedicated Server (yay!)

Built using cm2network/steamcmd.

To run it, make sure you export UDP ports `7777`, `15000` and `15777`.

The container comes with two volumes:
 - `/home/steam/satisfactory-dedicated` - here is where the game will be installed
 - `/home/steam/.config/Epic/FactoryGame` - here is where the save games will be stored

Both directories must be writable by UID 1000 (the steam user in the container).

 Example:
 ```
 docker run -p 7777:7777/udp -p 15000:15000/udp -p 15777:15777/udp -v /path/to/install:/home/steam/satisfactory-dedicated -v /path/to/savegame:/home/steam/.config/Epic/FactoryGame bsx303/satisfactory:steam
 ```
