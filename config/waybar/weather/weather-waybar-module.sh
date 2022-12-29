

WEATHER_PATH=$HOME/.config/waybar/weather/weather.py
#GEOLOCATOR_PATH=$HOME/.config/waybar/weather/geolocateme.py

LOCATION=$($GEOLOCATOR_PATH)
LAT=$(echo "$LOCATION" | awk '{split($0,l,";"); print l[1]}')
LON=$(echo "$LOCATION" | awk '{split($0,l,";"); print l[2]}')

$WEATHER_PATH --lat "$LAT" --lon "$LON" --output-format '{"text": "  {{current.icon}} {{current.temperature}}°F ", "alt": " {{city}}: {{current.temperature}}°F, {{current.description_long}} -> {{next.temperature}}°F, {{next.description_long}} ", "tooltip": " {{city}}: {{current.temperature_min}}°F -> {{current.temperature_max}}°F "}'
