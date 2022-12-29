# Waybar weather module with geolocation

This is an example set of scripts that allow me to always have weather forecast at my waybar.

Each script can be used on its own, but together they are great.

## Requirements
* NetworkManager for WIFI AP scanning
* Google [Geolocation API](https://developers.google.com/maps/documentation/geolocation/overview) key
* [OpenWeatherMap](https://openweathermap.org/) API key

## geolocateme.py
Geolocation uses Google's Geolocation API to approximate your location via wifi AP in your surroundings. You must obtain an API key for this to work.

## weather.py
Weather information and forecast is from OpenWeatherMap. You need their API key.
This script can report weather from either city ID (which you can find using owm find) or latitude+longitude, which can be obtained from the `geolocateme.py` script or entered manually.
The output format can also be fully customized using jinja template supplied to the `--output-format` argument.

## waybar module
This script simlply combines the other to into a format accepted by waybar.