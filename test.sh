echo "#################"
echo "#  TEST SCRIPT  #"
echo "# List Agencies #"
echo "#################"
echo ""

expected_result="🚌 AC Transit 🚆 BART 🚆 Caltrain 🚌 Dumbarton Express 🚌 LAVTA 🚌 Marin Transit 🚌 SamTrans 🚌 SF-MUNI 🚌 Vine (Napa County) 🚌 VTA 🚌 WESTCAT"
test_command="python muni.py --list_agencies"
output=`python muni.py --list_agencies`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi

echo ""
echo ""
echo "#################"
echo "#  TEST SCRIPT  #"
echo "#  List Routes  #"
echo "#################"
echo ""


expected_result="1 (1) Bay Fair BART Berkeley BART 11 (11) Dimond District Piedmont 12 (12) Berkeley BART Downtown Oakland 14 (14) Downtown Oakland Fruitvale BART 18 (18) Montclair University Village Albany 1R (1R) Bay Fair BART Downtown Oakland 20 (20) Dimond District Downtown Oakland 200 Union City Bart-Newpark Mall-Fremont Bar (200) Fremont BART Union City BART 21 (21) Dimond District Oakland Airport 210 (210) Ohlone College Union Landing Shopping Center 212 (212) Fremont BART NewPark Mall 215 (215) Fremont BART Northwestern Polytechnic University 216 (216) Ohlone College Newark Campus Union City BART 217 (217) Fremont BART Great MallMain Transit Center 22 (22) Clockwise Hayward BART Counterclockwise Hayward BART 232 (232) Fremont BART NewPark Mall 239 (239) Fremont BART Kato Rd and Milmont Dr 25 (25) A Loop El Cerrito Plaza BART B Loop El Cerrito Plaza BART 251 (251) Fremont BART Ohlone College Newark Campus 26 (26) Emeryville Public Market Wala Vista Ave and Lakeshore Ave 275 (275) Lido Faire Shopping Center Union City BART 31 (31) Alameda Point Downtown Oakland 314 (314) Hegenberger Rd and Edgewater Dr West Oakland Post Office 32 (32) Clockwise Hayward BART Counterclockwise Hayward BART 339 (339) Chabot Space and Science Center Fruitvale BART 356 (356) Alameda South Shore Center MacArthur Blvd and EC Reems Ct 37 (37) Clockwise Hayward BART Counterclockwise Hayward BART 376 (376) Clockwise El Cerrito Del Norte BART 386 (386) Hayward BART Mack Street 39 (39) Fruitvale BART Skyline High School 40 (40) Downtown Oakland Eastmont Transit Center 45 (45) Eastmont Transit Center Foothill Square 46 (46) Coliseum BART Oakland Zoo 47 (47) Fruitvale BART Maxwell Park 48 (48) Bay Fair BART Hayward BART 49 (49) A Loop Rockridge BART B Loop Rockridge BART 51A (51A) Fruitvale BART Rockridge BART 51B (51B) Berkeley Amtrak Rockridge BART 52 (52) UC Campus University Village Albany 54 (54) Fruitvale BART Merritt College 57 (57) 40th St and San Pablo Ave Foothill Square 58L (58L) Eastmont Transit Center Oakland Amtrak at Jack London Square 60 (60) Cal State East Bay Hayward BART 62 (62) Fruitvale BART West Oakland BART 65 (65) Berkeley BART Lawrence Hall of Science 67 (67) Berkeley BART Spruce St and Grizzly Peak Blvd 687 Bay Farm Is Lincoln Middle Sch (687) Lincoln Middle School 687 Bay Farm Is / Lincoln Middle Sch (687) Bay Farm Island 691 SkylineMontclairSnake Rd (691) Montclair Skyline Blvd and Tunnel Rd 7 (7) Berkeley BART El Cerrito Del Norte BART 70 (70) Richmond BART Richmond Parkway Transit Center 71 (71) El Cerrito Plaza BART Richmond Parkway Transit Center 72 (72) Hilltop Mall Oakland Amtrak at Jack London Square 72M (72M) Oakland Amtrak at Jack London Square Point Richmond 72R (72R) Contra Costa College Jack London Square 73 (73) Eastmont Transit Center Oakland Airport 74 (74) Castro Ranch Road Harbour Way South and Ford Point 75 (75) Clockwise San Leandro BART Counterclockwise San Leandro BART 76 (76) El Cerrito Del Norte BART Hilltop Mall 800 (800) Richmond BART San Francisco 801 (801) Bay Fair BART Downtown Oakland 802 (802) Berkeley Amtrak Downtown Oakland 805 (805) Downtown Oakland Oakland Airport 83 (83) Hayward BART South Hayward BART 840 (840) Downtown Oakland Eastmont Transit Center 85 (85) San Leandro BART South Hayward BART 851 (851) Berkeley BART Fruitvale BART 86 (86) Hayward BART Mack Street 88 (88) Berkeley BART Lake Merritt BART 89 (89) Clockwise San Leandro BART Counterclockwise San Leandro BART 93 (93) Clockwise Hayward BART Counterclockwise Hayward BART 94 (94) Hayward BART Hayward Highlands 95 (95) Fairview District Hayward BART 97 (97) Bay Fair BART Union City BART 98 (98) Clockwise Coliseum BART Counterclockwise Coliseum BART 99 (99) Bay Fair BART Fremont BART B (B) San Francisco Trestle Glen Broadway Shuttle Fri Sat Nights (BSN) Broadway and 27th St Jack London Square Broadway Shuttle Weekdays (BSD) Grand Avenue Jack London Square C (C) Piedmont San Francisco CB (CB) San Francisco Warren Fwy and Broadway Terr E (E) Caldecott Lane Claremont Ave and Hudson St F (F) Downtown Berkeley San Francisco FS (FS) San Francisco Solano Ave and Colusa Ave G (G) El Cerrito San Francisco H (H) Barrett Ave and San Pablo Ave San Francisco J (J) Sacramento St and University Ave San Francisco L (L) Princeton Plaza Shopping Center San Francisco LA (LA) Hilltop Park and Ride San Francisco LC (LC) Hilltop Park and Ride M (M) Hayward BART Hillsdale Shopping Center Mountain Golf Links RdDu (46L) Coliseum BART Grass Valley NL (NL) Eastmont Transit Center San Francisco NX (NX) San Francisco NX1 (NX1) Dimond District NX2 (NX2) High St and MacArthur Blvd NX3 (NX3) Marlow Dr and Foothill Way San Francisco NX4 (NX4) Castro Valley Park and Ride San Francisco NXC (NXC) Castro Valley Park and Ride O (O) Fruitvale BART San Francisco OX (OX) Bay Farm Island San Francisco P (P) Piedmont San Francisco S (S) Eden Shores Park San Francisco SB (SB) Cedar Blvd and Stevenson Blvd Newark San Francisco U (U) Fremont BART Stanford Shopping Center V (V) College Ave and Broadway San Francisco W (W) Broadway and Blanding Ave San Francisco Z (Z) Buchanan St and Pierce St San Francisco"
test_command="python muni.py --list_routes 'AC Transit'"
output=`python muni.py --list_routes 'AC Transit'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


expected_result="Daly City (747) Dublin/Pleasanton (920) Fremont (917) Millbrae (764) Pittsburg/Bay Point (908) Pleasant Hill (1568) Richmond (237) SF Airport (722) SF Airport then Millbrae (1561)"
test_command="python muni.py --list_routes BART"
output=`python muni.py --list_routes BART`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


expected_result="BABY BULLET (BABY BULLET) NORTHBOUND TO SAN FRANCISCO SOUTHBOUND TO SAN JOSE DIRIDON SOUTHBOUND TO TAMIEN LIMITED (LIMITED) NORTHBOUND TO SAN FRANCISCO SOUTHBOUND TO GILROY SOUTHBOUND TO SAN JOSE DIRIDON SOUTHBOUND TO TAMIEN LOCAL (LOCAL) NORTHBOUND TO SAN FRANCISCO SOUTHBOUND TO GILROY SOUTHBOUND TO SAN JOSE DIRIDON SOUTHBOUND TO TAMIEN"
test_command="python muni.py --list_routes Caltrain"
output=`python muni.py --list_routes Caltrain`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


expected_result="DB (DB) Stanford University Union City BART DB1 (DB1) Stanford Research Park Union City BART"
test_command="python muni.py --list_routes 'Dumbarton Express'"
output=`python muni.py --list_routes 'Dumbarton Express'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


expected_result="1 - East Dublin (1) LOOP 10 - Intermunicipal (10) EASTBOUND WESTBOUND 11 - Northeast Livermore (11) LOOP 12 - Intermunicipal (12) EASTBOUND WESTBOUND 12X - Intermunicipal (12X) EASTBOUND WESTBOUND 14 - Central Livermore (14) LOOP 15 - Springtown (15) LOOP 2 - Dublin Ranch (2) LOOP 20X (20X) CLOCKWISE COUNTERCLOCK 3 - West Dublin (3) CLOCKWISE COUNTERCLOCK 401 - Big Trees Park (401) INBOUND to INBOUND OUTBOUND to OUTBOUND 402 - Hagemann Park (402) OUTBOUND to OUTBOUND 403 - Granada (403) INBOUND to INBOUND OUTBOUND to OUTBOUND 501 - East Dublin (501) INBOUND to INBOUND OUTBOUND to OUTBOUND 502 - East Dublin (502) INBOUND to INBOUND OUTBOUND to OUTBOUND 503 - Shannon Park (503) INBOUND to INBOUND OUTBOUND to OUTBOUND 51 - Livermore Library (51) LOOP 53 - Stoneridge (53) INBOUND to INBOUND OUTBOUND to OUTBOUND 54 - Hacienda (54) INBOUND to INBOUND OUTBOUND to OUTBOUND 601 - Ruby Hill (601) INBOUND to INBOUND OUTBOUND to OUTBOUND 602 - Del Prado Park (602) INBOUND to INBOUND OUTBOUND to OUTBOUND 603 - Muirwood Park (603) INBOUND to INBOUND OUTBOUND to OUTBOUND 604 - Fairlands (604) INBOUND to INBOUND OUTBOUND to OUTBOUND 605 - Fairlands (605) INBOUND to INBOUND OUTBOUND to OUTBOUND 606 - Vintage Hills (606) INBOUND to INBOUND OUTBOUND to OUTBOUND 607 - Laguna Oaks (607) INBOUND to INBOUND OUTBOUND to OUTBOUND 608 - Amaral Park (608) INBOUND to INBOUND OUTBOUND to OUTBOUND 609 - Del Prado Park (609) INBOUND to INBOUND OUTBOUND to OUTBOUND 610 - Fairlands (610) INBOUND to INBOUND OUTBOUND to OUTBOUND 611 - Ruby Hill (611) INBOUND to INBOUND OUTBOUND to OUTBOUND 70X - PLEASANT HILL | DUBLIN (70X) INBOUND to INBOUND OUTBOUND to OUTBOUND 70XV - Intermunicipal (70XV) INBOUND to INBOUND OUTBOUND to OUTBOUND 8 - Hopyard (8) CLOCKWISE COUNTERCLOCK 9 - Hacienda (9) CLOCKWISE COUNTERCLOCK R - Intermunicipal (R) EASTBOUND WESTBOUND"
test_command="python muni.py --list_routes LAVTA"
output=`python muni.py --list_routes LAVTA`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


expected_result="113 (113) 113 Eastbound To Paradise Cay 113 Westbound To Redwood HS 115 (115) 115 Northbound To Tam HS 115 Southbound To Marin City via St. Hilary 115 Southbound To Marin City via Strawberry 115 Southbound To Willow Creek 117 (117) 117 Eastbound To Cove Park 117 Eastbound To E Corte Madera 117 Westbound To Hall MS via Cove Park 117 Westbound To Hall MS via E Corte Madera 119 (119) 119 Eastbound To Tiburon 119 Westbound To Redwood HS 119 Westbound To Redwood HS via Belvedere 122 (122) 122 Northbound To Indian Valley Campus 122 Northbound To San Rafael 122 Southbound To College of Marin 122 Southbound To College of Marin via IVC 125 (125) 125 Eastbound To San Rafael 125 Westbound To Lagunitas 139 (139) 139 Northbound To Lucas Valley 139 Southbound To Terra Linda HS 145 (145) 145 Southbound To San Rafael 151 (151) 151 Northbound To Novato 151 Northbound To San Marin HS 151 Southbound To Hamilton 151 Southbound To Hamilton via Novato 154 (154) 154 Eastbound To Olive 154 Eastbound To Olive via San Marin HS 154 Westbound To Novato 219 (219) 219 Eastbound To Tiburon via Seminary 219 Eastbound To Tiburon via Strawberry 219 Westbound To Seminary via Strawberry 219 Westbound To Strawberry 219 Westbound To Strawberry via Belvedere 219F Eastbound To Tiburon via Strawberry 219F Westbound To Strawberry 233 (233) 233 Northbound To Santa Venetia 233 Northbound To Santa Venetia - Adrian & Labrea 233 Southbound To San Rafael 251 (251) 251 Northbound To San Marin 251 Northbound To San Marin via Novato 251 Southbound To Hamilton 251 Southbound To Pacheco Plaza 257 (257) 257 Northbound To Ignacio 257 Southbound To San Rafael 259 (259) 259 Northbound To Novato 259 Southbound To San Rafael 259 Southbound To San Rafael via Ignacio 61 (61) 61 Eastbound To Marin City 61 Eastbound To Marin City no SBPL 61 Westbound To Bolinas via Marin City 68 (68) 68 Eastbound To San Rafael 68 Eastbound To San Rafael no BVVC 68 Eastbound To San Rafael via Lagunitas 68 Westbound To Inverness 68 Westbound To Lagunitas"
test_command="python muni.py --list_routes 'Marin Transit'"
output=`python muni.py --list_routes 'Marin Transit'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


expected_result="11 (11) Gateway Hickey Southgate Lakeshire 110 (110) Daly City BART Pacifica 112 (112) Colma BART Pacifica 118 (118) Colma BART Pacifica 120 (120) Brunswick Templeton Colma BART 121 (121) Lowell Hanover Skyline College 122 (122) South SF BART Stonestown SF State 130 (130) Colma BART Daly City BART 131 (131) Airport Linden Serramonte Center 133 (133) Airport Linden San Bruno BART 14 (14) Linda Mar Park and Ride 140 (140) Manor Palmetto SFO AirTrain 141 (141) San Bruno BART Shelter Creek 16 (16) Serramonte Center Terra Nova High 17 (17) Linda Mar Main Kelly Moonridge Pescadero 19 (19) IBL School Linda Mar Park and Ride 24 (24) Brisbane Westmoor High 25 (25) Ben Franklin School Los Olivos Santa Barbara 250 (250) 5th El Camino College of San Mateo 251 (251) Foster City Hillsdale Mall 252 (252) 5th El Camino 256 (256) Foster City Hillsdale Mall 260 (260) College of San Mateo San Carlos Caltrain 261 (261) Continentals Lyall San Carlos Caltrain 270 (270) Florence 17th Redwood City Transit Center 273 (273) Cordilleras Center Redwood City Transit Center 274 (274) Cañada College Redwood City Transit Center 275 (275) Alameda Woodside Redwood City Transit Center 276 (276) Florence 17th Redwood City Transit Center 278 (278) Canada College Redwood City Transit Center 28 (28) Serramonte Center South City High 280 (280) Purdue Fordham Stanford Mall 281 (281) Onetta Harris Center Stanford Mall 286 (286) Menlo Park Caltrain Monte Rosa Eastridge 29 (29) Lipman School Templeton Brunswick 292 (292) Hillsdale Mall San Francisco 294 (294) Main Poplar San Mateo Medical Center 295 (295) San Carlos Caltrain San Mateo Caltrain 296 (296) Bayshore Donohoe Redwood City Transit Center 297 (297) Palo Alto Transit Center Redwood City Transit Center 35 (35) El Camino High Warwick Christen 37 (37) Alta Loma School Hillside Grove 38 (38) INBOUND to Safe Harbor OUTBOUND to San Bruno BART _ Colma BART _ Airport Linden 39 (39) Alta Loma School Hazelwood Kenwood 397 (397) Palo Alto Transit Center San Francisco 398 (398) Redwood City Transit Center San Bruno BART 43 (43) San Bruno BART 46 (46) Burlingame School Carolan 49 (49) SFO AirTrain Terra Nova High 53 (53) Borel School Peninsula Humboldt 54 (54) Bowditch School Hillsdale Norfolk 55 (55) Borel School Clark El Camino 57 (57) Edgewater Beach Park Hillsdale High 58 (58) Borel School Polhemus Paul Scannell 59 (59) Aragon High Hillsdale Norfolk 60 (60) Alameda Ralston Bridge Bowsprit 62 (62) Alameda Ralston Dale View Old County 67 (67) Bridge Bowsprit Ralston School 68 (68) Hiller Wessex Ralston School 72 (72) Marlborough Dumbarton Selby Lane School 73 (73) Clifford School G Industrial 79 (79) Florence 17th Kennedy School 80 (80) Santa Cruz Elder 82 (82) Bay Marsh Hillview School 83 (83) Bay Menlo Oaks Hillview School 84 (84) Hillview School Middlefield Lane 85 (85) La Honda Grandview Ormondale Corte Madera 86 (86) Indian Crossing Alpine Menlo Atherton High 87 (87) Portola Valley Woodside High 88 (88) Bay Marsh Encinal School 89 (89) Santa Monica San Andreas 95 (95) Route 95 North Alameda Ralston Route 95 South Redwood City Transit Center ECR (ECR) Daly City BART Palo Alto Transit Center FlxP (FLXP) Pacifica FLXS (FLXS) Route FLXs CounterClockwise San Carlos p.m. San Carlos KX (KX) Redwood City Transit Center San Francisco"
test_command="python muni.py --list_routes SamTrans"
output=`python muni.py --list_routes SamTrans`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


expected_result="1-California (1) Inbound to Downtown Outbound to The Richmond District 10-Townsend (10) Inbound to Pacific Heights Outbound to General Hospital 12-Folsom Pacific (12) Inbound to Jackson and Van Ness Outbound to The Mission District 14-Mission (14) Inbound to Downtown Outbound to Daly City 14X-Mission Express (14X) Inbound to Downtown Outbound to Daly City 18-46th Avenue (18) Inbound to The Richmond District Outbound to Stonestown 19-Polk (19) Inbound to Fishermans Wharf Outbound to Hunters Point 19th Avenue Rapid (28R) Inbound to Fillmore Outbound to Daly City Station 1AX-California A Express (1AX) Inbound to Downtown Outbound to The Richmond District 1BX-California B Express (1BX) Inbound to Downtown Outbound to The Richmond District 2-Clement (2) Inbound to Downtown Outbound to The Richmond District 21-Hayes (21) Inbound to Downtown Outbound to Golden Gate Park 22-Fillmore (22) Inbound to The Marina District Outbound to Potrero Hill 23-Monterey (23) Inbound to The Bayview District Outbound to San Francisco Zoo 24-Divisadero (24) Inbound to Pacific Heights Outbound to The Bayview District 27-Bryant (27) Inbound to Jackson and Van Ness Outbound to The Mission District 28-19th Avenue (28) Inbound to Fort Mason Outbound to Daly City Station 29-Sunset (29) Inbound to The Richmond District Outbound to The Bayview District 3-Jackson (3) Inbound to Downtown Outbound to Pacific Heights 30-Stockton (30) Inbound to Caltrain Outbound to The Marina District 30X-Marina Express (30X) Inbound to Downtown Outbound to The Marina District 31-Balboa (31) Inbound to Downtown Outbound to Ocean Beach 31AX-Balboa A Express (31AX) Inbound to Downtown Outbound to Ocean Beach 31BX-Balboa B Express (31BX) Inbound to Downtown Outbound to Ocean Beach 33-Ashbury-18th (33) Inbound to The Richmond District Outbound to General Hospital 35-Eureka (35) Inbound to Castro Station Outbound to Diamond Heights 36-Teresita (36) Inbound to Forest Hill and Midtown Terrace Outbound to Glen Park Station 37-Corbett (37) Inbound to The Haight-Ashbury District Outbound to Twin Peaks 38-Geary (38) Inbound to Downtown Outbound to The Richmond District 38AX-Geary A Express (38AX) Inbound to Downtown Outbound to The Richmond District 38BX-Geary B Express (38BX) Inbound to Downtown Outbound to The Richmond District 39-Coit (39) Inbound to Fishermans Wharf Outbound to Telegraph Hill 41-Union (41) Inbound to Downtown Outbound to The Presidio 43-Masonic (43) Inbound to The Marina District Outbound to The Crocker-Amazon District 44-OShaughnessy (44) Inbound to The Richmond District Outbound to Hunters Point 45-Union Stockton (45) Inbound to Caltrain Outbound to The Presidio 47-Van Ness (47) Inbound to Fishermans Wharf Outbound to Caltrain 48-Quintara 24th Street (48) Inbound to Potrero Hill Outbound to The Sunset District 49-Van Ness Mission (49) Inbound to Fort Mason Outbound to City College 5-Fulton (5) Inbound to Downtown Outbound to Ocean Beach 52-Excelsior (52) Inbound to Forest Hill Station Outbound to The Excelsior District 54-Felton (54) Inbound to The Bayview District Outbound to Daly City 55-16th Street (55) Inbound to 16th and Mission Outbound to Mission Bay-UCSF 56-Rutland (56) Inbound to Visitacion Valley Outbound to Candlestick Point 6-Haight-Parnassus (6) Inbound to Downtown Outbound to The Sunset District 66-Quintara (66) Inbound to 9th Avenue and Judah Outbound to 30th Avenue and Vicente 67-Bernal Heights (67) Inbound to 24th Street and Mission Outbound to Alemany Boulevard 76X-Marin Headlands Express (76X) Inbound to Downtown SF Outbound to Marin HeadlandsGG Bridge 8-Bayshore (8) Inbound to Fishermans Wharf Outbound to City College 81X-Caltrain Express (81X) Inbound to Downtown 82X-Levi Plaza Express (82X) Inbound to Levi Plaza Outbound to Caltrain 83X-Caltrain (83X) Inbound to 9th and Market Outbound to Caltrain Station 88-Bart Shuttle (88) Inbound to Balboa Park Station Outbound to Sickles and Mission 8AX-Bayshore A Express (8AX) Inbound to Chinatown Outbound to Visitacion Valley 8BX-Bayshore B Express (8BX) Inbound to Fishermans Wharf Outbound to City College 9-San Bruno (9) Inbound to Downtown Outbound to Visitacion Valley 90-San Bruno Owl (90) Inbound to Fort Mason Outbound to Visitacion Valley 91-Owl (91) Inbound to SF State via Downtown Outbound to West Portal via Downtown California Cable Car (61) Inbound to Downtown Outbound to Van Ness and California F-Market And Wharves (F) Inbound to Fishermans Wharf Outbound to Castro Station Fulton Rapid (5R) Inbound to Downtown Outbound to Ocean Beach Geary Rapid (38R) Inbound to Transbay Terminal Outbound to 48th Avenue HaightNoriega (7) Inbound to Downtown Outbound to Sunset District HaightNoriega Rapid (7R) Inbound to Downtown Outbound to Sunset District J-Church (J) Inbound to Downtown Outbound to Balboa Park Station K-Owl (K_OWL) Inbound to Downtown Outbound to Balboa Park Station KT-Ingleside Third Street (KT) Inbound to Visitacion Valley via Downtown Outbound to Balboa Park Station via Downtown L-Owl (L_OWL) Inbound to Downtown Outbound to San Francisco Zoo L-Taraval (L) Inbound to Downtown Outbound to San Francisco Zoo M-Ocean View (M) Inbound to Downtown Outbound to Balboa Park Station M-Owl (M_OWL) Inbound to Downtown Outbound to Balboa Park Station MarketCastro To Ferry Bldg (FBUS) Inbound to Ferry Plaza Outbound to Castro Station via Downtown Mission Rapid (14R) Inbound to Downtown Outbound to Daly City N-Judah (N) Inbound to Caltrain via Downtown Outbound to Ocean Beach via Downtown N-Owl (N_OWL) Inbound to Ocean Beach Outbound to Ocean Beach Noriega Express (7X) Inbound to Downtown Outbound to Sunset District NX-N Express (NX) Inbound to Downtown Outbound to Judah Ocean Beach Parkmerced (57) Inbound to West Portal Station Outbound to Parkmerced Powell Hyde Cable Car (60) Inbound to Downtown Outbound to Fishermans Wharf Powell Mason Cable Car (59) Inbound to Downtown Outbound to Fishermans Wharf San Bruno Rapid (9R) Inbound to Downtown Outbound to Visitacion Valley T-Owl (T_OWL) Inbound to Visitacion Valley Outbound to Van Ness and Market Treasure Island (25) Inbound to Transbay Terminal Outbound to Treasure Island"
test_command="python muni.py --list_routes SF-MUNI"
output=`python muni.py --list_routes SF-MUNI`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


expected_result="ROUTE 1 (1) Browns Valley/Downtown ROUTE 2 (2) Outlets /Old Sonoma /Laurel/County Health/Downtown ROUTE 3 (3) County Health/South Napa Marketplace/Coombs ROUTE 4 (4) Shetler / South Napa Marketplace ROUTE 5 (5) Alta Heights/Pear Tree/Napa High ROUTE 6 (6) Redwood PNR/Siena H.S./Southerland/Pear Tree ROUTE 7 (7) Redwood PNR/Claremont/Jefferson/Salvador ROUTE 8 (8) Downtown/Redwood PNR Redwood PNR/Downtown ROUTE 10 (10) Calistoga/NVC NVC/Calistoga ROUTE 11 (11) Redwood PNR/Vallejo Vallejo/Redwood PNR ROUTE 21 (21) Fairfield/Suisun City Napa ROUTE 25 (25) Napa to Sonoma Sonoma to Napa ROUTE 29 (29) Express to BART Express to Napa/Calistoga"
test_command="python muni.py --list_routes 'Vine (Napa County)'"
output=`python muni.py --list_routes 'Vine (Napa County)'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


expected_result="10 Local (Airport) (10) Metro Airport Light Rail Sta via SJ Airport Santa Clara Transit Ctr and Caltrain Sta via SJ Airport 101 Express (101) Camden Ave and Hwy 85 Palo Alto - Hanson Way and Page Mill Rd 102 Express (102) Palo Alto - Hanson Way and Page Mill Rd South San Jose - Santa Teresa Station 103 Express (103) Eastridge Transit Center Palo Alto - Hanson Way and Page Mill Rd 104 Express (104) Palo Alto - Deer Creek Rd Penitencia Creek Transit Center 12 Local (Regular) (12) Eastridge Transit Center via Flea Mkt San Jose Civic Center via Flea Mkt 120 Express (120) Fremont BART Station Lockheed Martin Transit Ctr - Moffett Park/Shoreline Bl 121 Express (121) Gilroy Transit Center and Caltrain Station Lockheed Martin Transit Ctr - Moffett Park 122 Express (122) Lockheed Martin Transit Ctr - Moffett Park South San Jose - Santa Teresa Station 13 Community Bus (13) Almaden Expwy and McKean Rd Ohlone-Chynoweth Light Rail Station 14 Community Bus (14) Gilroy Transit Center and Caltrain Station 140 Express (140) Fremont BART Station Mission College Bl and Montague Expwy 16 Community Bus (16) Burnett Ave Morgan Hill Civic Center 168 Express (168) Gilroy Transit Center and Caltrain Station San Jose Diridon Transit Ctr and Caltrain Station 17 Community Bus (17) Murray Ave and Tomkins Ct - Social Services 18 Community Bus (18) Gavilan College Gilroy Transit Center and Caltrain Station 180 Express (180) Great Mall/Main Transit Ctr / Aborn Rd and White Rd 181 Express (181) Fremont BART Station via Great Mall-Main TC San Jose Diridon Transit Ctr and Caltrain Station 182 Express (182) I.B.M. - Bailey Ave Palo Alto - Page Mill Rd and El Camino Real 19 Community Bus (19) Gilroy Transit Center and Caltrain Station Wren Ave and Mantelli Dr 200 Light Rail (Shuttle) (200) Mountain View Transit Center 201 Community Bus (DASH) (201) Downtown San Jose - 4th St and San Fernando St San Jose Diridon Transit Ctr and Caltrain Station 22 Core (Regular) (22) Eastridge Transit Ctr via El Camino Real Palo Alto Transit Ctr and Caltrain Sta via El Camino Real 23 Core (Regular) (23) Alum Rock Transit Ctr via Stevens Creek Bl De Anza College via Stevens Creek Bl 25 Core (Regular) (25) Alum Rock Transit Ctr via Valley Medical Ctr De Anza College via Valley Medical Ctr 26 Core (Regular) (26) Eastridge Transit Center Sunnyvale - Lockheed Martin Transit Ctr 27 Local (Regular) (27) Good Samaritan Hospaital Kaiser San Jose 304 Limited (304) South San Jose - Santa Teresa Station Sunnyvale Transit Center via Arques Ave 31 Local (Regular) (31) Eastridge Transit Center Evergreen Valley College 32 Community Bus (32) San Antonio Transit Center Santa Clara Transit Ctr and Caltrain Station 323 Core (Limited) (323) De Anza College Downtown San Jose - Bassett St Terminal 328 Limited (328) Almaden Expwy and Via Valiente Lockheed Martin Transit Ctr - Moffett Park 330 Limited (330) Adler Dr and Tasman Dr Almaden Expwy and Via Valiente 34 Community Bus (34) Downtown Mountain View Transit Ctr San Antonio Transit Center 35 Local (Regular) (35) Downtown Mountain View Transit Ctr Stanford Shopping Center 37 Community Bus (37) Capitol Light Rail Station West Valley College 39 Community Bus (39) Eastridge Transit Center The Villages 40 Local (Regular) (40) Foothill College via Downtown Los Altos La Avenida Ave and Shoreline Bl 42 Community Bus (42) Evergreen Valley College Kaiser San Jose 45 Community Bus (45) Alum Rock Transit Center Penitencia Creek Transit Center 46 Local (Regular) (46) Great Mall-Main Transit Center Milpitas High School 47 Local (Regular) (47) Great Mall-Main Transit Center McCarthy Ranch 48 Community Bus (48) Los Gatos Civic Ctr via Winchester Bl Winchester Transit Ctr via Winchester Bl 49 Community Bus (49) Los Gatos Civic Ctr via Los Gatos Bl Winchester Transit Ctr via Los Gatos Bl 52 Local (Regular) (52) Downtown Mountain View Transit Ctr Foothill College 522 Core (Rapid) (522) Eastridge Transit Center Palo Alto Transit Ctr and Caltrain Station 53 Local (Regular) (53) Sunnyvale Transit Center West Valley College 54 Local (Regular) (54) De Anza College Sunnyvale - Lockheed Martin Transit Ctr 55 Core (Regular) (55) De Anza College Great America 57 Local (Regular) (57) Great America via Quito Rd West Valley College 58 Local (Regular) (58) Alviso / Alviso via Fruitvale Ave West Valley College / De La Cruz Bl and Aldo Ave 60 Core (Regular) (60) Great America 61 Core (Regular) (61) Good Samaritan Hospital Sierra Rd and Piedmont Rd via Bascom Ave 62 Core (Regular) (62) Good Samaritan Hospaital Sierra Rd and Piedmont Rd via Union Ave 63 Local (Regular) (63) Almaden Expwy and Camden Ave San Jose State University 64 Core (Regular) (64) Almaden Light Rail Station McKee Rd and White Rd via Downtown San Jose 65 Community Bus (65) 13th St and Hedding St Kooser Rd and Blossom Hill Rd 66 Core (Regular) (66) Kaiser San Jose Milpitas / Dixon Rd via Downtown San Jose 68 Core (Regular) (68) Gilroy Transit Center and Caltrain Station San Jose Diridon Transit Ctr and Caltrain Station 70 Core (Regular) (70) Capitol Light Rail Station Great Mall-Main Transit Center 71 Core (Regular) (71) Eastridge Transit Center Great Mall-Main Transit Center via White Rd 72 Core (Regular) (72) Downtown San Jose Senter Rd and Monterey Hwy 73 Core (Regular) (73) Downtown San Jose Snell Rd and Capitol Expwy 77 Core (Regular) (77) Eastridge Transit Center 81 Local (Regular) (81) San Jose State Univ and Santa Clara Transit Ctr Vallco Mall 82 Local (Regular) (82) Downtown San Jose Westgate Center 88 Community Bus (88) Middlefield Rd and Colorado Ave Palo Alto Veteran's Hospital 89 Local (Regular) (89) California Ave Caltrain Station Palo Alto Veteran's Hospital 900 Light Rail (900) Inbound to Ohlone-Chynoweth Light Rail Station Outbound to Almaden Light Rail Station 901 Light Rail (901) Inbound to Alum Rock Light Rail Station Outbound to Santa Teresa Light Rail Station 901X Light Rail Express (901X) Inbound to Baypointe Light Rail Station (Express) Outbound to Santa Teresa Light Rail Station (Express) 902 Light Rail (902) Inbound to Mountain View Light Rail Station Outbound to Winchester Light Rail Station 904 (904) Inbound to Mountain View - Fair Oaks Outbound to Mountain View - Fair Oaks 911 Light Rail Event Service (911) Inbound to Levi's Stadium / Mtn View (Event Service) Outbound to Santa Teresa Light Rail Station (Event Service) 912 Light Rail Event Service (912) Inbound to Levi's Stadium / Gish Light Rail Station (Event Service) Outbound to Mountain View Light Rail Station (Event Service) 913 Light Rail Event Service (913) Inbound to Alum Rock Light Rail Station (Event Service) Outbound to Levi's Stadium / Mtn View Light Rail Station (Event Service) 914 Light Rail Event Service (914) Inbound to Levi's Stadium / Mtn View Light Rail Station (Event Service) Outbound to Winchester Light Rail Station (Event Service) 915 (915) Inbound to Lick Mill - Santa Teresa Outbound to Lick Mill - Santa Teresa 916 (916) Inbound to Diridon - Lick Mill Outbound to Diridon - Lick Mill 917 (917) Inbound to Lick Mill - Alum Rock Outbound to Lick Mill - Alum Rock 918 (918) Inbound to Mountain View - Great America Outbound to Mountain View - Great America"
test_command="python muni.py --list_routes VTA"
output=`python muni.py --list_routes VTA`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


expected_result="10 GEMS AND BIRDS (10) LOOP 11 CROCKETT RODEO (11) TO CROCKETT TO HERCULES 12 TREES AND FLOWERS (12) LOOP 15 VIEWPOINTE (15) TO HERCULES TO VIEWPOINTE 16 PINOLE VALLEY (16) TO PINOLE VALLEY TO RICHMOND PKWY 17 BAYVIEW (17) FROM RICHMOND PKWY TO RICHMOND PKWY 18 TARA HILLS (18) FROM HILLTOP MALL TO HILLTOP MALL 19 HILLTOP HERCULES (19) TO HERCULES TO HILLTOP MALL 30Z MARTINEZ LINK (30Z) TO HERCULES TO MARTINEZ C3 CONTRA COSTA COLLEGE (C3) TO COLLEGE TO HERCULES JL (JL) FROM BART TO BART JPX (JPX) FROM BART TO BART JR (JR) FROM BART TO BART JX (JX) FROM BART TO BART LYNX (LYNX) TO HERCULES TO SAN FRANCISCO"
test_command="python muni.py --list_routes WESTCAT"
output=`python muni.py --list_routes WESTCAT`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi