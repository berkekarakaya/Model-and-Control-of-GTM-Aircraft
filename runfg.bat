C:

cd C:\Program Files\FlightGear 2024.1

SET FG_ROOT=C:\Program Files\FlightGear 2024.1\data

START .\\bin\fgfs.exe --fdm=null --native-fdm=socket,in,30,localhost,5502,udp    --aircraft=757-200-RB211 --fog-fastest --disable-clouds --start-date-lat=2004:06:01:09:00:00 --disable-sound --in-air --airport=EHAM --runway=27 --altitude=500 --heading=265 --offset-distance=4.72 --offset-azimuth=0  
