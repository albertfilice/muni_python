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


echo ""
echo ""
echo "#################"
echo "#  TEST SCRIPT  #"
echo "# List le Stops #"
echo "#################"
echo ""
echo "AC Transit"

expected_result="Direction: Bay Fair BART International Blvd and 90th Av (50164) Telegraph Av and 32nd St (50411) Telegraph Av and 60th St (50422) E 14th St and 150th Av (50702) Broadway and 17th St 19th St BART Station (50958) E 14th St and Estabrook St (50976) Telegraph Av and 62nd St (51123) International Blvd and 85th Av (51154) Telegraph Av and Stuart St (51215) E 14th St and 141st Av (51228) International Blvd and 23rd Av (51287) International Blvd and 38th Av (51500) Telegraph Av and Dwight Way (51555) Durant Av and Ellsworth St (51584) Telegraph Av and 55th St (51851) Telegraph Av and 24th St (52220) International Blvd and 34th Av (52222) E 14th St and Toler Av (52238) International Blvd and 40th Av (52445) E 14th St and Best Av Dutton Av (52755) E 14th St and Castro St (52833) International Blvd and 52nd Av (52882) International Blvd and 62nd Av (53358) Telegraph Av and Alcatraz Av (53377) International Blvd and 64th Av (53383) International Blvd and 94th Av (53385) International Blvd and 29th Av (53599) International Blvd and 80th St (53974) Telegraph Av and 50th St (54111) International Blvd and High St (54333) Telegraph Av and 34th St (54334) International Blvd and 19th Av (54353) Telegraph Av and 36th St (54404) International Blvd and 46th Av (54435) Telegraph Av and 59th St (54499) 11th St and Madison St (54555) International Blvd and 104th Av (54666) Broadway and 19th St 19th St BART Station (54700) International Blvd and Hegenberger Rd (54888) Davis St and Hays St (54944) E 14th St and Cornwall Way (54959) San Leandro BART Station (55005) International Blvd and 87th Av (55075) Dana St and Haste St (55138) Telegraph Av and Aileen St (55139) E 14th St and Lorraine Blvd (55168) Telegraph Av and W Grand Av (55191) E 14th St and W Juana Av (55292) Telegraph Av and 27th St (55343) E 14th St and Bayfair Dr (55401) Telegraph Av and 52nd St (55425) E 14th St and San Leandro Blvd (55426) E 14th St and Bristol Blvd (55478) Telegraph Av and 30th St (55520) International Blvd and 14th Av (55528) Telegraph Av and Webster St (55529) Shattuck Av and Allston Way (55555) International Blvd and 5th Av (55568) International Blvd and 98th Av (55572) Telegraph Av and 40th St (55575) International Blvd and Havenscourt Blvd (55587) International Blvd and 82nd Av (55598) International Blvd and 69th Av (55636) E 14th St and San Leandro Hospital (55669) International Blvd and 102nd Av (55689) Center St and Shattuck Sq Berkeley BART Sta (55700) Telegraph Av and Prince St (55723) E 14th St and W Broadmoor Blvd (55752) Thomas L Berkley Way 20th St and Telegraph (55777) E 14th St and Durant Av (55805) Coelho Dr and Mooney Av (55810) International Blvd and 49th Av (55850) Telegraph Av and W Macarthur Blvd (55933) Telegraph Av and 45th St (55989) Shattuck Av and Kittredge St (55999) Telegraph Av and 58th St (56007) Bayfair BART Station (56333) International Blvd and 17th Av (56454) International Blvd and 8th Av (56522) E 14th St and Parrott St (56533) Durant Av and Shattuck Av (56555) Davis St and Hays St (56588) E 14th St and 148th Av (56632) International Blvd and 21st Av (56659) Broadway and 14th St 12th St BART Station (56666) International Blvd and 54th Av (56686) Telegraph Av and 44th St (56783) Telegraph Av and Ashby Av (57088) E 14th St and 144th Av (57117) Durant Av and Dana St (57555) 11th St and Broadway 12th St BART Station (57777) International Blvd and 2nd Av (57778) E 14th St and Stoakes Av (58252) Telegraph Av and Russell St (58330) International Blvd and 10th Av (58444) International Blvd and Fruitvale Av (58588) International Blvd and 26th Av (58666) 159th Av and E 14th St (58808) Telegraph Av and Parker St (58835) 11th St and Harrison St (58888) International Blvd and 57th Av (59535) International Blvd and 78th Av (59553) E 14th St and Fairmont Dr (59589) Telegraph Av and Derby St (59593) International Blvd and 100th Av (59795) E 14th St and W Estudillo Av (59966) International Blvd and Seminary Av (59990)"
test_command="python muni.py --list_stops 'AC Transit~1~South'"
output=`python muni.py --list_stops 'AC Transit~1~South'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi

expected_result="Direction: Berkeley BART E 14th St and 153rd Av (50200) International Blvd and 26th Av (50666) International Blvd and 78th Av (50707) International Blvd and 2nd Av (50734) International Blvd and 46th Av (50755) E 14th St and 159th Av (50919) E 14th St and Estabrook St (50978) Telegraph Av and Stuart St (51005) Telegraph Av and Derby St (51015) International Blvd and 19th Av (51051) Telegraph Av and Bancroft Way (51078) Telegraph Av and Webster St (51114) Broadway and 19th St 19th St BART Station (51155) International Blvd and 57th Av (51161) Telegraph Av and Haste St (51244) Telegraph Av and 29th St (51331) International Blvd and 17th Av (51399) International Blvd and 100th Av (51445) International Blvd and 69th Av (51711) Telegraph Av and 55th St (51815) Broadway and 14th St (52111) Telegraph Av and 27th St (52235) Telegraph Av and Parker St (52250) Fulton St and Kittredge St (52280) E 14th St and 141st Av (52366) Telegraph Av and Russell St (52424) International Blvd and 62nd Av (52455) International Blvd and Seminary Av (52619) E 14th St and Begier Av (52656) Telegraph Av and 36th St (52774) E 14th St and Sybil Av (52866) Telegraph Av and 58th St (53008) Broadway and 17th St 19th St BART Station (53335) Bay Fair BART Station (53684) International Blvd and Havenscourt Blvd (53777) San Leandro BART Station (53999) International Blvd and 73rd Av (54000) International Blvd and 40th Av (54245) E 14th St and Broadmoor Blvd (54399) International Blvd and 64th Av (54522) E 14th St and Dutton Av (54545) International Blvd and 80th Av (54585) Bancroft Way and Ellsworth St (54655) E 14th St and Sunnyside Dr (54667) Davis St and Hays St (54944) International Blvd and 38th Av (54955) Telegraph Av and 59th St (55002) 12th St and Jackson St (55066) Telegraph Av and 62nd St (55136) Telegraph Av and 43rd St (55161) International Blvd and 54th Av (55188) Telegraph Av and 46th St (55258) E 14th St and Dolores Av (55266) Coelho Dr and Mooney Av (55311) Telegraph Av and 38th St (55375) International Blvd and Fruitvale Av (55449) International Blvd and 48th Av (55450) International Blvd and 14th Av (55518) E 14th St and 150th Av (55538) E 14th St and San Leandro Blvd (55540) International Blvd and 10th Av (55541) International Blvd and 82nd Av (55544) International Blvd and 104th Av (55545) 12th St and Oak St (55570) International Blvd and 98th Av (55588) Bancroft Way and Dana St (55593) Telegraph Av and Aileen St (55649) International Blvd and 87th Av (55695) Telegraph Av and W Grand Av (55748) International Blvd and Mitchell St (55782) 12th St and Fallon St (55840) Telegraph Av and 49th St (55885) International Blvd and 29th Av (55922) Telegraph Av and 34th St (56161) E 14th St and Joaquin Av (56226) International Blvd and Durant Av (56466) International Blvd and 23rd Av (56500) E 14th St and 143rd Av (56554) Davis St and Hays St (56588) Telegraph Av and Claremont Av (56646) Telegraph Av and 40th St (56665) E 14th St and Bayfair Dr (56767) E 14th St and 145th Av (57171) International Blvd and High St (57666) Telegraph Av and Dwight Way (57711) Telegraph Av and 31st St (57722) International Blvd and 90th Av (57775) Telegraph Av and Alcatraz Av (57788) Thomas L Berkley Way 20th St and Telegraph (57999) International Blvd and 34th Av (58000) 12th St and Webster St (58200) Telegraph Av and Prince St (58220) E 14th St and Blossom Way (58255) International Blvd and 21st Av (58688) 12th St and Harrison St (58858) International Blvd and 5th Av (58887) International Blvd and 8th Av (59155) E 14th St and 148th Av (59449) International Blvd and 94th Av (59533) International Blvd and 86th Av (59876) International Blvd and 52nd Av (59898) Telegraph Av and 24th St (59991) 12th St and Broadway (59995)"
test_command="python muni.py --list_stops 'AC Transit~1~North'"
output=`python muni.py --list_stops 'AC Transit~1~North'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


echo ""
echo "BART"

expected_result="16th St. Mission (SF) (10) Civic Center (SF) (12) Powell St. (SF) (14) Montgomery St. (SF) (16) Embarcadero (SF) (18) West Oakland (20) Fremont (21) Union City (23) South Hayward (25) Hayward (27) Bayfair (San Leandro) (29) San Leandro (31) Coliseum/Oakland Airport (33) Fruitvale (Oakland) (35) Lake Merritt (Oakland) (37) Richmond (40) El Cerrito Del Norte (42) El Cerrito Plaza (44) North Berkeley (46) Downtown Berkeley (48) Ashby (Berkeley) (50) Concord (52) Pleasant Hill (54) Walnut Creek (56) Lafayette (58) Orinda (60) Rockridge (Oakland) (62) MacArthur (Oakland) (64) 19th St. Oakland (66) 12th St. Oakland City Center (68) North Concord/Martinez (70) Castro Valley (73) Dublin/Pleasanton (75) Pittsburg/Bay Point (78) Daly City (91) Daly City (92) Balboa Park (SF) (94) Glen Park (SF) (96) 24th St. Mission (SF) (98)"
test_command="python muni.py --list_stops BART~747"
output=`python muni.py --list_stops BART~747`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


echo ""
echo "Caltrain"

expected_result="Direction: NORTHBOUND TO SAN FRANCISCO San Francisco Caltrain Station (70011) 22nd Street Caltrain Station (70021) Millbrae Caltrain Station (70061) San Mateo Caltrain Station (70091) Hillsdale Caltrain Station (70111) Redwood City Caltrain Station (70141) Menlo Park Caltrain Station (70161) Palo Alto Caltrain Station (70171) Mountain View Caltrain Station (70211) Sunnyvale Caltrain Station (70221) San Jose Diridon Caltrain Station (70261) Tamien Caltrain Station (70271)"
test_command="python muni.py --list_stops 'Caltrain~BABY BULLET~NB'"
output=`python muni.py --list_stops 'Caltrain~BABY BULLET~Nb'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi

expected_result="Direction: SOUTHBOUND TO SAN JOSE DIRIDON San Francisco Caltrain Station (70012) 22nd Street Caltrain Station (70022) Millbrae Caltrain Station (70062) Hillsdale Caltrain Station (70112) Redwood City Caltrain Station (70142) Menlo Park Caltrain Station (70162) Palo Alto Caltrain Station (70172) Mountain View Caltrain Station (70212) San Jose Diridon Caltrain Station (70262)"
test_command="python muni.py --list_stops 'Caltrain~BABY BULLET~SB1'"
output=`python muni.py --list_stops 'Caltrain~BABY BULLET~SB1'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


echo ""
echo "Dumbarton Express"

expected_result="Direction: Stanford University Decoto Rd and Royal Ann Dr Clover St (50252) Va Hospital (50353) Union City BART (50781) Roth Way and Lomita Dr (50809) Ardenwood P and R Lot (51397) Willow Rd and Ivy Dr (51449) Decoto Rd and Mount Palomar Ct (51561) Decoto Rd and Cabrillo Dr (52911) Decoto Rd and Meyers Dr (53338) Middlefield Rd and Willow Rd (54834) Palo Alto Transit Center (55003) Decoto Rd and Ozark River Way (55056) Decoto Rd and Brookmill Dr (55120) Decoto Rd and Perry Rd (55295) Willow Rd and Newbridge St (55804) Willow Rd and Coleman Av (55814) Decoto Rd and AlvaradoNiles Rd (55877) Middlefield Rd and Lytton Av (57635) Willow Rd and Hamilton Av (57761) Lytton Av and Florence St (58254) Lytton Av and Ramona St (58328) Willow Rd and Nash Av (58465) Lytton Av and Kipling St (59150) Willow Rd and Blackburn St (59190)"
test_command="python muni.py --list_stops 'Dumbarton Express~DB~West'"
output=`python muni.py --list_stops 'Dumbarton Express~DB~West'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi

expected_result="Direction: Union City BART Decoto Rd and Fremont Blvd (50501) Lytton Ave and Kipling St (50851) Decoto Rd and Cabrillo Dr (51313) Ardenwood P and R Lot (51397) Decoto Rd and Ozark River Way (54232) Willow Rd and Blackburn St (54280) Willow Rd and OBrien Dr (54299) Roth Way and Campus Dr (54329) Decoto Rd and Clover St Royal Ann Dr (54720) Palo Alto Transit Center (55003) Middlefield Rd and Lytton Av (55248) Lytton Av and Cowper St (55284) Stanford Oval (55432) Decoto Rd and Brookmill Dr (56250) Decoto Rd and AlvaradoNiles Rd (56762) Lytton Av and Ramona St (56877) Willow Rd and Chester St (56988) Willow Rd and Newbridge St (57675) Decoto Rd and Perry Rd (57708) Decoto Rd and Union Square (57718) Willow Rd and Coleman Av (57762) Willow Rd and Hamilton Av (58299) Willow Rd and Gilbert Av (58747) Middlefield Rd and Willow Rd (58870) Willow Rd and OKeefe St (59498)"
test_command="python muni.py --list_stops 'Dumbarton Express~DB~East'"
output=`python muni.py --list_stops 'Dumbarton Express~DB~East'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


echo ""
echo "LAVTA"

expected_result="Direction: EASTBOUND DUBLIN BLVD & MYRTLE DR (880005) DUBLIN BLVD & TASSAJARA WB (880006) EB DUBLIN BLVD & HIBERNIA DR EB (880009) EAST DUBLIN BART (880027) Railroad & Bankhead Theater (880212) Railroad & L Street EB (880213) RAILROAD & N St (880214) RAILROAD & P St (880215) STANLEY & MURRIETA (880221) STANLEY & VALLEY MEM EB (880223) TRANSIT CENTER (880225) AIRWAY BLVD BART PNR (880281) DUBLIN BLVD & Grafton EB (880282) DUBLIN BLVD & KEEGAN EB (880283) E AIRWAY BLVD & PORTOLA (880284) E AIRWAY BLVD & SUTTER (880285) E AIRWAY BLVD & VIA MATEO (880286) EB Dublin Blvd & Fallon Gateway (880287) K HAWK NISSEN (880288) KITTYHAWK & AIRWAY (880289) KITTYHAWK & AIRWAY (880290) LAS POSITAS COLLEGE (880291) MURRIETA & DEL NORTE (880292) MURRIETA & OLIVINA (880293) MURRIETA & PINE (880294) MURRIETA & PORTOLA (880295) N CANYON & CONSTITUTION (880296) N CANYON & INDEPENDENCE (880297) N CANYON & TRIAD (880298) Outlet_E (880299) P STREET & LINDEN (880300) P STREET & OLIVINA (880301) PINE & ALGONQUIN (880302) PINE & COMANCHE CT (880303) PINE & No P (880304) PINE & RINCON (880305) RUTAN & RICKENBACKER NB (880306) RUTAN & SONIC NB (880307) Dublin Blvd & Hacienda EB (880765) DUBLIN & ARNOLD EB (880766)"
test_command="python muni.py --list_stops LAVTA~12~Eastbound"
output=`python muni.py --list_stops LAVTA~12~Eastbound`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


expected_result="Direction: LOOP BRODER BLVD & SANTA RITA JAIL (880001) CENTRAL & GLYNNIS ROSE EB (880002) CENTRAL & HACIENDA EB (880003) CENTRAL & KILLIAN EB (880004) DUBLIN BLVD & MYRTLE DR (880005) DUBLIN BLVD & TASSAJARA WB (880006) EAST DUBLIN BART (880007) EAST DUBLIN BART (880008) EB DUBLIN BLVD & HIBERNIA DR EB (880009) GLEASON DR & ARNOLD RD (880010) GLEASON DR & HACIENDA DR (880011) HACIENDA DR & CENTRAL PKWY (880012) HACIENDA DR & GLEASON DR (880013) HACIENDA DR & HAVEN PLACE (880014) HACIENDA DR & SUMMERGLEN (880015) MADIGAN AV & BRODER BV (880016) OWENS & HACIENDA (880017) OWENS & ROSEWOOD (880018) ROSE PAVILION INBOUND (880019) ROSEWOOD DR & OLD SANTA RITA (880020) ROSEWOOD DR & WAL MART DR (880021) EAST DUBLIN BART (880027) Dublin Blvd & Hacienda EB (880765) DUBLIN & ARNOLD EB (880766) 4500 TASSAJARA (880778)"
test_command="python muni.py --list_stops LAVTA~1~LOOP"
output=`python muni.py --list_stops LAVTA~1~LOOP`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


echo ""
echo "Marin Transit"

expected_result="Direction: 113 Eastbound To Paradise Cay Antilles Way & Martinique Av (40265) Tamal Vista Blvd & Fifer Av (40269) Tamal Vista Blvd & Sandpiper Circle (40271) Tamalpais Dr & Casa Buena Dr (40281) Paradise Dr & Madera Del Presidio Av (40283) Paradise Dr & El Camino Dr (40285) Paradise Dr & Prince Royal Dr (40287) Paradise Dr & Golden Hinde Passage (40289) Paradise Dr & Uplands Circle (40291) Paradise Dr & Robin Dr (40293) Lucky Dr & Riviera Circle (40313) Paradise Dr & Ranch Rd (41189) 33 San Clemente Dr (41320) San Clemente Parking Lot (42008) Tamal Vista Blvd & Council Crest Dr (42108) Redwood High School (42146)"
test_command="python muni.py --list_stops 'Marin Transit~113~1728'"
output=`python muni.py --list_stops 'Marin Transit~113~1728'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


echo ""
echo "SamTrans"

expected_result="Direction: Linda Mar Park and Ride TERRA NOVA BLVD & ALICANTE (311010) CRESPI DR & DE SOLO DR (311025) CRESPI DR & SEVILLE DR (311026) CRESPI DR & FASSLER AVE (311029) CRESPI DR & HWY 1 (311030) CRESPI DR & LERIDA WY (311034) CRESPI DR & PERALTA RD (311038) CRESPI DR & ROBERTS RD (311040) LINDA MAR BLVD & LINDA MAR PARK N RIDE (311106) ODDSTAD BLVD & TERRA NOVA BLVD (311142) TERRA NOVA BLVD & HIGH SCHOOL (311191) TERRA NOVA BLVD & MASON DR (311193) TERRA NOVA BLVD & MIRANDA CT (311194) TERRA NOVA BLVD & LERIDA (311302) LINDA MAR BLVD & MADEIRA DR (311510) LINDA MAR BLVD & CAPISTRANO (311613) LINDA MAR BLVD & PERALTA (311615) LINDA MAR BLVD & ALICANTE (311616) LINDA MAR BLVD & SEVILLE (311617)"
test_command="python muni.py --list_stops 'SamTrans~14~CLOCKWIS'"
output=`python muni.py --list_stops 'SamTrans~14~CLOCKWIS'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


expected_result="Direction: 5th El Camino 1ST AVE & B ST (341002) 1ST AVE & N B ST (341003) E 3RD AVE & S FREMONT ST (341025) E 3RD AVE & S HUMBOLDT ST (341026) E 4TH AVE & N DELAWARE ST (341029) W 4TH AVE & S EL CAMINO REAL (341030) CLAREMONT/2ND AVE (341032) DARTMOUTH RD & 5TH AVE (341096) S DELAWARE ST & 2ND AVE (341103) S EL CAMINO REAL & E 5TH AVE (341145) PENINSULA AVE & HUMBOLDT ST (341278) S SAN MATEO DR & 2ND AVE (341290) S SAN MATEO DR & E 4TH AVE (341292) E 4TH AVE & S GRANT ST (341548) S BAYSHORE BLVD & 2ND AVE (341551) S NORFOLK ST & 2ND AVE (341552) BAYSHORE & MT DIABLO (341641) BAYSHORE & EAST POPULAR (341642) 801 NORTH HUMBOLDT (COURTHOUSE) (341643) NORTH HUMBOLDT & EAST POPULAR (341644) S HUMBOLDT & 2ND AVE (341651) S HUMBOLDT & MONTE DIABLO (341654) 5th Ave/El Camino Real (341655)"
test_command="python muni.py --list_stops SamTrans~252~COUNTERC"
output=`python muni.py --list_stops SamTrans~252~COUNTERC`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


echo ""
echo "SF-MUNI"

expected_result="Direction: Outbound to Ocean Beach via Downtown Carl St and Cole St (13909) Carl St and Hillway Ave (13912) Carl St and Stanyan St (13914) Duboce Ave and Church St (14447) Embarcadero Folsom St (14510) Irving St and 2nd Ave (15118) Irving St and 4th Ave (15119) Irving St and 7th Ave (15121) Irving St and 9th Ave (15123) Judah St and 9th Ave (15193) Judah St and 12th Ave (15195) Judah St and 16th Ave (15198) Judah St and 19th Ave (15199) Judah St and 23rd Ave (15202) Judah St and 25th Ave (15203) Judah St and 28th Ave (15205) Judah St and 31st Ave (15207) Judah St and 34th Ave (15209) Judah St and 40th Ave (15211) Judah St and 43rd Ave (15213) Judah St and 46th Ave (15215) Judah St and Funston Ave (15219) Judah and La Playa St (15221) Judah St and Sunset Blvd (15224) King St and 2nd St (15237) King St and 4th St (15240) Montgomery Station Outbound (16994) Powell Station Outbound (16995) Van Ness Station OB (16996) Civic Center Station Outbound (16997) The Embarcadero and Brannan St (17145) Embarcadero Station Outbound (17217) Judah St and La Playa St (17219) Sunset Tunnel East Portal (17252)"
test_command="python muni.py --list_stops SF-MUNI~N~Outbound"
output=`python muni.py --list_stops SF-MUNI~N~Outbound`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


echo ""
echo "Vine (Napa County)"

expected_result="Direction: Outlets /Old Sonoma /Laurel/County Health/Downtown Soscol Gateway Transit Center (89001) 1st Street & Main Street (89002) 1st Street & Washington Street (89003) 1st Street & Monroe Street (89004) 3rd Street & Coombs Street (89018) Premium Outlets (89019) Kilburn Avenue & Cornwall Avenue (89020) Kilburn Avenue & Bryan Avenue (89021) Kilburn Avenue & Chelsea Avenue (89022) Laurel Street & Kilburn Avenue (89023) Laurel Street & Laurel Lane (89024) Laurel Street & Griggs Lane (89025) Foothill Blvd & Hilltop Drive (89026) Foothill Blvd & Pine Street (89027) Foothill Blvd & Greco Drive (89028) Old Sonoma Road & Foster Road (89029) Old Sonoma Road & Underhill Drive (SE) (89030) Health & Human Services (SW) (89031) Old Sonoma Road & Harston Street (89032) Jefferson Street & Elm Street (89033) Pine Street & Jefferson Street (89034) Pine Street & Seminary Street (89035) Pine Street & Adams Street (89036) Franklin Street & Division Street (89037)"
test_command="python muni.py --list_stops 'Vine (Napa County)~2~LP'"
output=`python muni.py --list_stops 'Vine (Napa County)~2~LP'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


expected_result="Direction: Redwood PNR/Downtown Soscol Gateway Transit Center (89001) 3rd Street & Jefferson Street (89017) 3rd Street & Coombs Street (89018) Jefferson Street & Sheridan Way (SW) (89094) Jefferson Street & Pueblo Avenue (NW) (89095) Claremont Way & Permanente Way (89111) Redwood Park & Ride (89113) Trancas Street & California Blvd (89114) Napa High (89116) Jefferson Street & H Street (NW) (89117) Jefferson Street & F Street (89118) Jefferson Street & B Street (89119) Jefferson Street & Lincoln Avenue (89308)"
test_command="python muni.py --list_stops 'Vine (Napa County)~8~S'"
output=`python muni.py --list_stops 'Vine (Napa County)~8~S'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


echo ""
echo "VTA"

expected_result="Direction: Evergreen Valley College SANTA TERESA BLVD & COTTLE RD (61124) YERBA BUENA RD-YERBA BUENA CRK TRAIL-FOOTBRIDGE (61249) EVERGREEN VALLEY COLLEGE-VALLE DEL LAEO (61251) MONTEREY RD & SENTER RD (61715) MONTEREY RD & BRANHAM LN (61780) MONTEREY RD & VALLEYHAVEN WAY (61781) MONTEREY RD & SKYWAY DR (61782) MONTEREY RD & SKYWAY DR-MID BLOCK (61783) SANTA TERESA LIGHT RAIL STA-SANTA TERESA BLVD (63304) SANTA TERESA BLVD & ENCINAL DR (63343) MONTEREY RD & ROEDER RD (63409) BERNAL RD & VIA SERENA (63697) MONTEREY RD & BERNAL RD (63698) MONTEREY RD & TENNANT AVE (63699) MONTEREY RD & SOUTHLAKE DR (63700) MONTEREY RD & PALMWELL WAY (63701) MONTEREY RD & FORD RD (63704) SENTER RD & MONTEREY RD (63705) SILVER CREEK BLVD & MARSH MANOR WY (63960) SILVER CREEK RD & RAVENS PLACE WY (63961) YERBA BUENA RD & SILVER CREEK VALLEY RD (63965) SAN IGNACIO AVE & VIA DEL ORO (64638) SAN IGNACIO AVE & LAS COLINAS LN (64639) SAN IGNACIO AVE & GREAT OAKS BLVD (64640) MONTEREY RD & RODLING WAY (65698) MONTEREY RD & MONTEREY CIR (65699) MONTEREY RD & MENARD DR (65705) SILVER LEAF RD & FLINTWELL CT (65765) ROEDER RD & GREY GHOST AVE (65771) E BRANHAM LN & RAHWAY DR (65772) E BRANHAM LN & EBERLY DR (65773) E BRANHAM LN & HOUNDSHAVEN WY (65774) SILVER LEAF RD & MOSSWELL CT (65775) FORD RD & MAYLAND AVE (65776) INTERNATIONAL CIR AT KAISER HOSPITAL (65779)"
test_command="python muni.py --list_stops VTA~42~North"
output=`python muni.py --list_stops VTA~42~North`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


echo ""
echo "WESTCAT"

expected_result="Direction: TO COLLEGE SAN PABLO AVE AND OAKRIDGE RD (261) SAN PABLO AVE AND HERCULES AVE (2100) SAN PABLO AVE AND JOHN ST (2101) SAN PABLO AVE AND APPIAN WAY (2103) SAN PABLO AVE AND SUNNYVIEW DR (2104) SAN PABLO AVE AND DEL MONTE DR (2105) SAN PABLO AVE AND TARA HILLS DR (2106) SAN PABLO AVE AND SHAMROCK DR (2107) SAN PABLO AVE AND CRESTWOOD DR (2108) SAN PABLO AVE AND FERN AVE (25026) SAN PABLO AVE AND ROBLE AVE (25027) SAN PABLO AVE AT SUGAR CITY (25028) SAN PABLO AVE AT PUBLIC STORAGE (25029) HERCULES TRANSIT CENTER (25501)"
test_command="python muni.py --list_stops 'WESTCAT~C3~TO COLLEGE'"
output=`python muni.py --list_stops 'WESTCAT~C3~TO COLLEGE'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


expected_result="Direction: TO HILLTOP MALL PINOLE VALLEY RD AND HENRY AVE (253) FITZGERALD AT SIZZLER (265) SAN PABLO AVE AND HERCULES AVE (2100) SAN PABLO AVE AND JOHN ST (2101) TENNANT AVE AND PEACH ST (25000) PINOLE VALLEY RD AT THE LANES (25001) FITZGERALD AT BEST BUY (25002) FITZGERALD AT APPLEBEES (25003) BLUME DR AND AUTO PLAZA (25009) BLUME DR AND KLOSE WAY (25075) HERCULES TRANSIT CENTER (25501)"
test_command="python muni.py --list_stops 'WESTCAT~19~TO HILLTOP MALL'"
output=`python muni.py --list_stops 'WESTCAT~19~TO HILLTOP MALL'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi


expected_result="Direction: LOOP FALCON WAY AND SPARROW DR (233) REFUGIO VALLEY AND COUNTRY RUN (235) HERCULES MIDDLE AND HIGH SCHOOL (2174) TURQUIOSE DR AND CINNABAR AVE (2175) TURQUIOSE DR AND JADE CT (2176) TURQUIOSE DR AND DIAMOND CT (2177) PHEASANT DR AND TANAGER WAY (2178) REFUGIO VALLEY PARK (2181) TURQUIOSE DR AND SYCAMORE AVE (25060) TURQUIOSE DR AND CRYSTAL CIR (25061) CINNABAR WAY AND OBSIDAN WAY (25062) OBSIDIAN WAY AND PERIDOT CT (25063) TURQUIOSE DR AND OBSIDAN WAY (25064) TURQUIOSE DR AT RESERVOIR (25065) PHEASANT DR AND MALACHITE (25066) TANAGER WAY AND MEADOWLARK WAY (25067) SPARROW DR AND STARLING AVE (25068) FALCON WAY AND FINCH CT (25069) FALCON WAY AND WREN CT (25070) FALCON WAY AT 454 (25071) FALCON WAY AND REFUGIO VALLEY (25072) REFUGIO VALLEY AT COMMUNITY CENTER (25073) REFUGIO VALLEY AT SWIM CENTER (25074) HERCULES TRANSIT CENTER (25501)"
test_command="python muni.py --list_stops WESTCAT~10~LOOP"
output=`python muni.py --list_stops WESTCAT~10~LOOP`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	echo "PASS: $test_command"
else
	echo "FAIL: $test_command"
	echo $output
	echo $expected_result
fi
