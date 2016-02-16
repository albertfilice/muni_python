## Muni.py

### Useage

You can get data from a number of different agencies, not just SF MUNI.  To list them run the following:

`python muni.py --list-agencies`


You can then list routes for a whatever agency you like by passing the agency name:

`python muni.py --list-routes <agencyName>`


From there you can get the stops for the route you want by passing the agency, route, and direction (usually inbount or outbound):

`python muni.py --list-stops <agencyName>~<routeName>~<direction>`


You need to specify a stop name or code to get predictions:

`python muni.py --list-times <agencyName>~<stopName>`

or

`python muni.py --list-times-code <stopCode>`


### Location Stuff

When fetching predictions, you can specify your location with a latitude and longitude pair:
`python muni.py --list-times 'SF-MUNI~Judah St and 23rd Ave' --location '37.785479,-122.396847'`

If you're using a Mac and have the 'whoami' module in your path, you can use the `--current-location` option with no parameters to get latitude and longitue  automatically:
`python muni.py --list-times 'SF-MUNI~Judah St and 23rd Ave' --current-location`


### Emoji  ✨

You can add `-e` or `--emoji` to get emoji in the output of some commands, notably when listing agencies and stop predictions.

`python muni.py --list-agencies -e`

	🚌  AC Transit
	🚆  BART
	🚆  Caltrain
	🚌  Dumbarton Express
	🚌  LAVTA
	🚌  Marin Transit
	🚌  SamTrans
	🚌  Santa Rosa CityBus
	🚌  SF-MUNI
	🚌  Vine (Napa County)
	🚌  VTA
	🚌  WESTCAT


`$ python muni.py --list-times-code '13084' -e --current-location`

	🚌  SF-MUNI | 10-Townsend | Outbound | Broadway and Montgomery St
	18 ‼️ 🏇  Might make it if you jog
	38 🐌  More than 10 minute buffer
	58 🐌  More than 10 minute buffer
	🚌  SF-MUNI | 12-Folsom Pacific | Outbound | Broadway and Montgomery St
	6 ‼️ 🚷  More than 15 minutes late walking
	27 🚶  5 to 10 minute buffer
	47 🐌  More than 10 minute buffer

More details to come...
