## muni.py

### Useage

You can list agencies, which is the top level:

`python muni.py --list_agencies`


You can then list routes for an agency...

`python muni.py --list_routes <agency_name>`


...and then get the stops for the route you want...

`python muni.py --list_stops <agency_name>~<route_name>~<direction>`


You can list departure times for a specified stop name:

`python muni.py --list_times <agency_name>~<stop_name>`


Or you can list departure times for a sepcified stop code:

`python muni.py --list_times <stop_code>`


### Location Stuff

When fetching stop times, you can specify your location like so: 
`python muni.py --list_times 'SF-MUNI~Judah St and 23rd Ave' --location '37.785479,-122.396847'`

If you're using a Mac and have the 'whoami' module in your path, you can use the `--current_location` option with no parameters to fetch coordinates automatically:
`python muni.py --list_times 'SF-MUNI~Judah St and 23rd Ave' --current_location`


More details to come...
