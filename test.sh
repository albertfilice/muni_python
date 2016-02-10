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


expected_result="1 (1) 11 (11) 12 (12) 14 (14) 18 (18) 1R (1R) 20 (20) 200 Union City Bart-Newpark Mall-Fremont Bar (200) 21 (21) 210 (210) 212 (212) 215 (215) 216 (216) 217 (217) 22 (22) 232 (232) 239 (239) 25 (25) 251 (251) 26 (26) 275 (275) 31 (31) 314 (314) 32 (32) 339 (339) 356 (356) 37 (37) 376 (376) 386 (386) 39 (39) 40 (40) 45 (45) 46 (46) 47 (47) 48 (48) 49 (49) 51A (51A) 51B (51B) 52 (52) 54 (54) 57 (57) 58L (58L) 60 (60) 62 (62) 65 (65) 67 (67) 687 Bay Farm Is Lincoln Middle Sch (687) 687 Bay Farm Is / Lincoln Middle Sch (687) 691 SkylineMontclairSnake Rd (691) 7 (7) 70 (70) 71 (71) 72 (72) 72M (72M) 72R (72R) 73 (73) 74 (74) 75 (75) 76 (76) 800 (800) 801 (801) 802 (802) 805 (805) 83 (83) 840 (840) 85 (85) 851 (851) 86 (86) 88 (88) 89 (89) 93 (93) 94 (94) 95 (95) 97 (97) 98 (98) 99 (99) B (B) Broadway Shuttle Fri Sat Nights (BSN) Broadway Shuttle Weekdays (BSD) C (C) CB (CB) E (E) F (F) FS (FS) G (G) H (H) J (J) L (L) LA (LA) LC (LC) M (M) Mountain Golf Links RdDu (46L) NL (NL) NX (NX) NX1 (NX1) NX2 (NX2) NX3 (NX3) NX4 (NX4) NXC (NXC) O (O) OX (OX) P (P) S (S) SB (SB) U (U) V (V) W (W) Z (Z)"
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


expected_result="BABY BULLET (BABY BULLET) LIMITED (LIMITED) LOCAL (LOCAL)"
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


expected_result="DB (DB) DB1 (DB1)"
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


expected_result="1 - East Dublin (1) 10 - Intermunicipal (10) 11 - Northeast Livermore (11) 12 - Intermunicipal (12) 12X - Intermunicipal (12X) 14 - Central Livermore (14) 15 - Springtown (15) 2 - Dublin Ranch (2) 20X (20X) 3 - West Dublin (3) 401 - Big Trees Park (401) 402 - Hagemann Park (402) 403 - Granada (403) 501 - East Dublin (501) 502 - East Dublin (502) 503 - Shannon Park (503) 51 - Livermore Library (51) 53 - Stoneridge (53) 54 - Hacienda (54) 601 - Ruby Hill (601) 602 - Del Prado Park (602) 603 - Muirwood Park (603) 604 - Fairlands (604) 605 - Fairlands (605) 606 - Vintage Hills (606) 607 - Laguna Oaks (607) 608 - Amaral Park (608) 609 - Del Prado Park (609) 610 - Fairlands (610) 611 - Ruby Hill (611) 70X - PLEASANT HILL | DUBLIN (70X) 70XV - Intermunicipal (70XV) 8 - Hopyard (8) 9 - Hacienda (9) R - Intermunicipal (R)"
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


expected_result="113 (113) 115 (115) 117 (117) 119 (119) 122 (122) 125 (125) 139 (139) 145 (145) 151 (151) 154 (154) 219 (219) 233 (233) 251 (251) 257 (257) 259 (259) 61 (61) 68 (68)"
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


expected_result="11 (11) 110 (110) 112 (112) 118 (118) 120 (120) 121 (121) 122 (122) 130 (130) 131 (131) 133 (133) 14 (14) 140 (140) 141 (141) 16 (16) 17 (17) 19 (19) 24 (24) 25 (25) 250 (250) 251 (251) 252 (252) 256 (256) 260 (260) 261 (261) 270 (270) 273 (273) 274 (274) 275 (275) 276 (276) 278 (278) 28 (28) 280 (280) 281 (281) 286 (286) 29 (29) 292 (292) 294 (294) 295 (295) 296 (296) 297 (297) 35 (35) 37 (37) 38 (38) 39 (39) 397 (397) 398 (398) 43 (43) 46 (46) 49 (49) 53 (53) 54 (54) 55 (55) 57 (57) 58 (58) 59 (59) 60 (60) 62 (62) 67 (67) 68 (68) 72 (72) 73 (73) 79 (79) 80 (80) 82 (82) 83 (83) 84 (84) 85 (85) 86 (86) 87 (87) 88 (88) 89 (89) 95 (95) ECR (ECR) FlxP (FLXP) FLXS (FLXS) KX (KX)"
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


expected_result="1-California (1) 10-Townsend (10) 12-Folsom Pacific (12) 14-Mission (14) 14X-Mission Express (14X) 18-46th Avenue (18) 19-Polk (19) 19th Avenue Rapid (28R) 1AX-California A Express (1AX) 1BX-California B Express (1BX) 2-Clement (2) 21-Hayes (21) 22-Fillmore (22) 23-Monterey (23) 24-Divisadero (24) 27-Bryant (27) 28-19th Avenue (28) 29-Sunset (29) 3-Jackson (3) 30-Stockton (30) 30X-Marina Express (30X) 31-Balboa (31) 31AX-Balboa A Express (31AX) 31BX-Balboa B Express (31BX) 33-Ashbury-18th (33) 35-Eureka (35) 36-Teresita (36) 37-Corbett (37) 38-Geary (38) 38AX-Geary A Express (38AX) 38BX-Geary B Express (38BX) 39-Coit (39) 41-Union (41) 43-Masonic (43) 44-OShaughnessy (44) 45-Union Stockton (45) 47-Van Ness (47) 48-Quintara 24th Street (48) 49-Van Ness Mission (49) 5-Fulton (5) 52-Excelsior (52) 54-Felton (54) 55-16th Street (55) 56-Rutland (56) 6-Haight-Parnassus (6) 66-Quintara (66) 67-Bernal Heights (67) 76X-Marin Headlands Express (76X) 8-Bayshore (8) 81X-Caltrain Express (81X) 82X-Levi Plaza Express (82X) 83X-Caltrain (83X) 88-Bart Shuttle (88) 8AX-Bayshore A Express (8AX) 8BX-Bayshore B Express (8BX) 9-San Bruno (9) 90-San Bruno Owl (90) 91-Owl (91) California Cable Car (61) F-Market And Wharves (F) Fulton Rapid (5R) Geary Rapid (38R) HaightNoriega (7) HaightNoriega Rapid (7R) J-Church (J) K-Owl (K_OWL) KT-Ingleside Third Street (KT) L-Owl (L_OWL) L-Taraval (L) M-Ocean View (M) M-Owl (M_OWL) MarketCastro To Ferry Bldg (FBUS) Mission Rapid (14R) N-Judah (N) N-Owl (N_OWL) Noriega Express (7X) NX-N Express (NX) Parkmerced (57) Powell Hyde Cable Car (60) Powell Mason Cable Car (59) San Bruno Rapid (9R) T-Owl (T_OWL) Treasure Island (25)"
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


expected_result="ROUTE 1 (1) ROUTE 2 (2) ROUTE 3 (3) ROUTE 4 (4) ROUTE 5 (5) ROUTE 6 (6) ROUTE 7 (7) ROUTE 8 (8) ROUTE 10 (10) ROUTE 11 (11) ROUTE 21 (21) ROUTE 25 (25) ROUTE 29 (29)"
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


expected_result="10 Local (Airport) (10) 101 Express (101) 102 Express (102) 103 Express (103) 104 Express (104) 12 Local (Regular) (12) 120 Express (120) 121 Express (121) 122 Express (122) 13 Community Bus (13) 14 Community Bus (14) 140 Express (140) 16 Community Bus (16) 168 Express (168) 17 Community Bus (17) 18 Community Bus (18) 180 Express (180) 181 Express (181) 182 Express (182) 19 Community Bus (19) 200 Light Rail (Shuttle) (200) 201 Community Bus (DASH) (201) 22 Core (Regular) (22) 23 Core (Regular) (23) 25 Core (Regular) (25) 26 Core (Regular) (26) 27 Local (Regular) (27) 304 Limited (304) 31 Local (Regular) (31) 32 Community Bus (32) 323 Core (Limited) (323) 328 Limited (328) 330 Limited (330) 34 Community Bus (34) 35 Local (Regular) (35) 37 Community Bus (37) 39 Community Bus (39) 40 Local (Regular) (40) 42 Community Bus (42) 45 Community Bus (45) 46 Local (Regular) (46) 47 Local (Regular) (47) 48 Community Bus (48) 49 Community Bus (49) 52 Local (Regular) (52) 522 Core (Rapid) (522) 53 Local (Regular) (53) 54 Local (Regular) (54) 55 Core (Regular) (55) 57 Local (Regular) (57) 58 Local (Regular) (58) 60 Core (Regular) (60) 61 Core (Regular) (61) 62 Core (Regular) (62) 63 Local (Regular) (63) 64 Core (Regular) (64) 65 Community Bus (65) 66 Core (Regular) (66) 68 Core (Regular) (68) 70 Core (Regular) (70) 71 Core (Regular) (71) 72 Core (Regular) (72) 73 Core (Regular) (73) 77 Core (Regular) (77) 81 Local (Regular) (81) 82 Local (Regular) (82) 88 Community Bus (88) 89 Local (Regular) (89) 900 Light Rail (900) 901 Light Rail (901) 901X Light Rail Express (901X) 902 Light Rail (902) 904 (904) 911 Light Rail Event Service (911) 912 Light Rail Event Service (912) 913 Light Rail Event Service (913) 914 Light Rail Event Service (914) 915 (915) 916 (916) 917 (917) 918 (918)"
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


expected_result="10 GEMS AND BIRDS (10) 11 CROCKETT RODEO (11) 12 TREES AND FLOWERS (12) 15 VIEWPOINTE (15) 16 PINOLE VALLEY (16) 17 BAYVIEW (17) 18 TARA HILLS (18) 19 HILLTOP HERCULES (19) 30Z MARTINEZ LINK (30Z) C3 CONTRA COSTA COLLEGE (C3) JL (JL) JPX (JPX) JR (JR) JX (JX) LYNX (LYNX)"
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