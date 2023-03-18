#!/usr/bin/env python

import subprocess
from pyquery import PyQuery # install using `pip install pyquery`
import json

# weather icons
weather_icons = {
    'sunnyDay': '',
    'clearNight': '',
    'cloudyFoggyDay': '',
    'cloudyFoggyNight': '',
    'rainyDay': '',
    'rainyNight': '',
    'snowyIcyDay': '',
    'snowyIcyNight': '',
    'severe': '',
    'default': ''
}

# get location_id
# to get your own location_id, go to https://weather.com & search your location.
# once you choose your location, you can see the location_id in the URL(64 chars long hex string)
# like this: https://weather.com/en-IN/weather/today/l/c3e96d6cc4965fc54f88296b54449571c4107c73b9638c16aafc83575b4ddf2e
location_id='6c8e57eb677433b20a721e92fa00a646b953b01c81d7ece8a197eb9e61eade10' # TODO

# priv_env_cmd = 'cat $PRIV_ENV_FILE | grep weather_location | cut -d "=" -f 2'
# location_id = subprocess.run(
#     priv_env_cmd, shell=True, capture_output=True).stdout.decode('utf8').strip()

# get html page
url = "https://weather.com/en-IN/weather/today/l/" + location_id
html_data = PyQuery(url)

# current temperature
temp = html_data("span[data-testid='TemperatureValue']").eq(0).text()

# current status phrase
status = html_data("div[data-testid='wxPhrase']").text()
status = f"{status[:16]}.." if len(status) > 17 else status

# status code
status_code = html_data("#regionHeader").attr("class").split(" ")[2].split("-")[2]

# status icon
icon = (
    weather_icons[status_code]
    if status_code in weather_icons
    else weather_icons["default"]
)

# temperature feels like
temp_feel = html_data(
    "div[data-testid='FeelsLikeSection'] > span[data-testid='TemperatureValue']"
).text()
temp_feel_text = f"Feels like {temp_feel}c"

# min-max temperature
temp_min = (
    html_data("div[data-testid='wxData'] > span[data-testid='TemperatureValue']")
    .eq(0)
    .text()
)
temp_max = (
    html_data("div[data-testid='wxData'] > span[data-testid='TemperatureValue']")
    .eq(1)
    .text()
)
temp_min_max = f"  {temp_min} \t  {temp_max}"

# wind speed
wind_speed = html_data("span[data-testid='Wind']").text().split("\n")[1]
wind_text = f"  {wind_speed}"

# humidity
humidity = html_data("span[data-testid='PercentageValue']").text()
humidity_text = f"  {humidity}"

# visibility
visbility = html_data("span[data-testid='VisibilityValue']").text()
visbility_text = f"  {visbility}"

# air quality index
air_quality_index = html_data("text[data-testid='DonutChartValue']").text()

# # hourly rain prediction
# prediction = html_data("section[aria-label='Hourly Forecast']")(
#     "div[data-testid='SegmentPrecipPercentage'] > span"
# ).text()
# prediction = prediction.replace("Chance of Rain", "")
# prediction = f"\n\n    (hourly) {prediction}" if len(prediction) > 0 else prediction

# tooltip text
tooltip_text = str.format(
    "\t{}\t\n{}\n{}\n\n{}\n{}\n{}",
    f'<span size="xx-large">{icon}  {temp}C</span>',
    f"<big>{status}</big>",
    f"<small>{temp_feel_text}</small>",
    f"<big>{temp_min_max}</big>",
    f"{wind_text}\t{humidity_text}",
    f"{visbility_text}\tAQI {air_quality_index}",
)

# print waybar module data
out_data = {
    "text": f"{icon}  {temp}C",
    "alt": status,
    "tooltip": tooltip_text,
    "class": status_code,
}
print(json.dumps(out_data))
