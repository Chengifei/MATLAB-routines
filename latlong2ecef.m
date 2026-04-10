function x = latlong2ecef(latd,longd)
lat = deg2rad(latd);
long = deg2rad(longd);
re = 6378.137;
e = 0.0818191909;
x = re / sqrt(1 - (e * sin(lat))^2) * ...
    [cos(lat) * [cos(long); sin(long)]; (1 - e^2) * sin(lat)];
end