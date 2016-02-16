

# Create the logs directory if it doesn't exist
if [ ! -d "logs" ] ; then
	echo "No logs folder, creating"
	mkdir logs
	if [ -d "logs" ] ; then
		echo "Logs folder is there now"
	else
		echo "Logs folder could not be created"
		exit
	fi
fi

current_branch=`git branch | grep '*' | cut -d' ' -f2`
python_version=`python --version 2>&1`
python_version_major=`echo $python_version | cut -d' ' -f2 | cut -d'.' -f1`

if [[ "$python_version_major" == "2" ]] ; then
	check_python_3=`python3 --version 2>&1`
	if [[ `echo $check_python_3 | cut -d' ' -f2 | cut -d'.' -f1` == "3" ]] ; then
		use_python3_explicetly="True"
	fi
elif [[ ! "$python_version_major" == "3" ]] ; then
	echo "Can't find Python 3"
	exit
fi

# Clear the log file and write some basic info to the file
echo "User:" `whoami` > "logs/templog.txt"
echo "System:" `uname` >> "logs/templog.txt"
echo "Current branch: ${current_branch}" >> "logs/templog.txt"
echo "Default Python: ${python_version}"  >> "logs/templog.txt"

if [[ "$use_python3_explicetly" == "True" ]] ; then
	python_command="python3"
	python_version=`${python_command} --version 2>&1`
	echo "Using Python: ${python_version}"  >> "logs/templog.txt"
else
	python_command="python"
fi



echo "#################" | tee -a "logs/templog.txt"
echo "# List Agencies #" | tee -a "logs/templog.txt"
echo "#################" | tee -a "logs/templog.txt"
echo "" | tee -a "logs/templog.txt"

expected_result="🚌 AC Transit 🚆 BART 🚆 Caltrain 🚌 Dumbarton Express 🚌 LAVTA 🚌 Marin Transit 🚌 SamTrans 🚌 SF-MUNI 🚌 Vine (Napa County) 🚌 VTA 🚌 WESTCAT"
test_command="${python_command} muni.py --list-agencies --emoji"
output=`${python_command} muni.py --list-agencies --emoji`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	printf "\e[32mPASS\e[0m: $test_command\n"
	echo "PASS: $test_command" >> "logs/templog.txt"
else
	printf "\e[31;4mFAIL\e[0m: $test_command\n"
	echo "FAIL: $test_command" >> "logs/templog.txt"
	echo $output >> "logs/templog.txt"
	echo $expected_result >> "logs/templog.txt"
fi

expected_result="AC Transit BART Caltrain Dumbarton Express LAVTA Marin Transit SamTrans SF-MUNI Vine (Napa County) VTA WESTCAT"
test_command="${python_command} muni.py --list-agencies"
output=`${python_command} muni.py --list-agencies`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	printf "\e[32mPASS\e[0m: $test_command\n"
	echo "PASS: $test_command" >> "logs/templog.txt"
else
	printf "\e[31;4mFAIL\e[0m: $test_command\n"
	echo "FAIL: $test_command" >> "logs/templog.txt"
	echo $output >> "logs/templog.txt"
	echo $expected_result >> "logs/templog.txt"
fi



echo "" | tee -a "logs/templog.txt"
echo "" | tee -a "logs/templog.txt"
echo "#################" | tee -a "logs/templog.txt"
echo "#  List Routes  #" | tee -a "logs/templog.txt"
echo "#################" | tee -a "logs/templog.txt"
echo "" | tee -a "logs/templog.txt"

expected_result="1 (1) Bay Fair BART Berkeley BART 11 (11) Dimond District Piedmont 12 (12) Berkeley BART Downtown Oakland 14 (14) Downtown Oakland Fruitvale BART 18 (18) Montclair University Village Albany 1R (1R) Bay Fair BART Downtown Oakland 20 (20) Dimond District Downtown Oakland 200 Union City Bart-Newpark Mall-Fremont Bar (200) Fremont BART Union City BART 21 (21) Dimond District Oakland Airport 210 (210) Ohlone College Union Landing Shopping Center 212 (212) Fremont BART NewPark Mall 215 (215) Fremont BART Northwestern Polytechnic University 216 (216) Ohlone College Newark Campus Union City BART 217 (217) Fremont BART Great MallMain Transit Center 22 (22) Clockwise Hayward BART Counterclockwise Hayward BART 232 (232) Fremont BART NewPark Mall 239 (239) Fremont BART Kato Rd and Milmont Dr 25 (25) A Loop El Cerrito Plaza BART B Loop El Cerrito Plaza BART 251 (251) Fremont BART Ohlone College Newark Campus 26 (26) Emeryville Public Market Wala Vista Ave and Lakeshore Ave 275 (275) Lido Faire Shopping Center Union City BART 31 (31) Alameda Point Downtown Oakland 314 (314) Hegenberger Rd and Edgewater Dr West Oakland Post Office 32 (32) Clockwise Hayward BART Counterclockwise Hayward BART 339 (339) Chabot Space and Science Center Fruitvale BART 356 (356) Alameda South Shore Center MacArthur Blvd and EC Reems Ct 37 (37) Clockwise Hayward BART Counterclockwise Hayward BART 376 (376) Clockwise El Cerrito Del Norte BART 386 (386) Hayward BART Mack Street 39 (39) Fruitvale BART Skyline High School 40 (40) Downtown Oakland Eastmont Transit Center 45 (45) Eastmont Transit Center Foothill Square 46 (46) Coliseum BART Oakland Zoo 47 (47) Fruitvale BART Maxwell Park 48 (48) Bay Fair BART Hayward BART 49 (49) A Loop Rockridge BART B Loop Rockridge BART 51A (51A) Fruitvale BART Rockridge BART 51B (51B) Berkeley Amtrak Rockridge BART 52 (52) UC Campus University Village Albany 54 (54) Fruitvale BART Merritt College 57 (57) 40th St and San Pablo Ave Foothill Square 58L (58L) Eastmont Transit Center Oakland Amtrak at Jack London Square 60 (60) Cal State East Bay Hayward BART 62 (62) Fruitvale BART West Oakland BART 65 (65) Berkeley BART Lawrence Hall of Science 67 (67) Berkeley BART Spruce St and Grizzly Peak Blvd 687 Bay Farm Is Lincoln Middle Sch (687) Lincoln Middle School 687 Bay Farm Is / Lincoln Middle Sch (687) Bay Farm Island 691 SkylineMontclairSnake Rd (691) Montclair Skyline Blvd and Tunnel Rd 7 (7) Berkeley BART El Cerrito Del Norte BART 70 (70) Richmond BART Richmond Parkway Transit Center 71 (71) El Cerrito Plaza BART Richmond Parkway Transit Center 72 (72) Hilltop Mall Oakland Amtrak at Jack London Square 72M (72M) Oakland Amtrak at Jack London Square Point Richmond 72R (72R) Contra Costa College Jack London Square 73 (73) Eastmont Transit Center Oakland Airport 74 (74) Castro Ranch Road Harbour Way South and Ford Point 75 (75) Clockwise San Leandro BART Counterclockwise San Leandro BART 76 (76) El Cerrito Del Norte BART Hilltop Mall 800 (800) Richmond BART San Francisco 801 (801) Bay Fair BART Downtown Oakland 802 (802) Berkeley Amtrak Downtown Oakland 805 (805) Downtown Oakland Oakland Airport 83 (83) Hayward BART South Hayward BART 840 (840) Downtown Oakland Eastmont Transit Center 85 (85) San Leandro BART South Hayward BART 851 (851) Berkeley BART Fruitvale BART 86 (86) Hayward BART Mack Street 88 (88) Berkeley BART Lake Merritt BART 89 (89) Clockwise San Leandro BART Counterclockwise San Leandro BART 93 (93) Clockwise Hayward BART Counterclockwise Hayward BART 94 (94) Hayward BART Hayward Highlands 95 (95) Fairview District Hayward BART 97 (97) Bay Fair BART Union City BART 98 (98) Clockwise Coliseum BART Counterclockwise Coliseum BART 99 (99) Bay Fair BART Fremont BART B (B) San Francisco Trestle Glen Broadway Shuttle Fri Sat Nights (BSN) Broadway and 27th St Jack London Square Broadway Shuttle Weekdays (BSD) Grand Avenue Jack London Square C (C) Piedmont San Francisco CB (CB) San Francisco Warren Fwy and Broadway Terr E (E) Caldecott Lane Claremont Ave and Hudson St F (F) Downtown Berkeley San Francisco FS (FS) San Francisco Solano Ave and Colusa Ave G (G) El Cerrito San Francisco H (H) Barrett Ave and San Pablo Ave San Francisco J (J) Sacramento St and University Ave San Francisco L (L) Princeton Plaza Shopping Center San Francisco LA (LA) Hilltop Park and Ride San Francisco LC (LC) Hilltop Park and Ride M (M) Hayward BART Hillsdale Shopping Center Mountain Golf Links RdDu (46L) Coliseum BART Grass Valley NL (NL) Eastmont Transit Center San Francisco NX (NX) San Francisco NX1 (NX1) Dimond District NX2 (NX2) High St and MacArthur Blvd NX3 (NX3) Marlow Dr and Foothill Way San Francisco NX4 (NX4) Castro Valley Park and Ride San Francisco NXC (NXC) Castro Valley Park and Ride O (O) Fruitvale BART San Francisco OX (OX) Bay Farm Island San Francisco P (P) Piedmont San Francisco S (S) Eden Shores Park San Francisco SB (SB) Cedar Blvd and Stevenson Blvd Newark San Francisco U (U) Fremont BART Stanford Shopping Center V (V) College Ave and Broadway San Francisco W (W) Broadway and Blanding Ave San Francisco Z (Z) Buchanan St and Pierce St San Francisco"
test_command="${python_command} muni.py --list-routes 'AC Transit'"
output=`${python_command} muni.py --list-routes 'AC Transit'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	printf "\e[32mPASS\e[0m: $test_command\n"
	echo "PASS: $test_command" >> "logs/templog.txt"
else
	printf "\e[31;4mFAIL\e[0m: $test_command\n"
	echo "FAIL: $test_command" >> "logs/templog.txt"
	echo $output >> "logs/templog.txt"
	echo $expected_result >> "logs/templog.txt"
fi



echo "" | tee -a "logs/templog.txt"
echo "" | tee -a "logs/templog.txt"
echo "#################" | tee -a "logs/templog.txt"
echo "# List le Stops #" | tee -a "logs/templog.txt"
echo "#################" | tee -a "logs/templog.txt"
echo "" | tee -a "logs/templog.txt"



echo "BART" | tee -a "logs/templog.txt"

expected_result="16th St. Mission (SF) (10) Civic Center (SF) (12) Powell St. (SF) (14) Montgomery St. (SF) (16) Embarcadero (SF) (18) West Oakland (20) Fremont (21) Union City (23) South Hayward (25) Hayward (27) Bayfair (San Leandro) (29) San Leandro (31) Coliseum/Oakland Airport (33) Fruitvale (Oakland) (35) Lake Merritt (Oakland) (37) Richmond (40) El Cerrito Del Norte (42) El Cerrito Plaza (44) North Berkeley (46) Downtown Berkeley (48) Ashby (Berkeley) (50) Concord (52) Pleasant Hill (54) Walnut Creek (56) Lafayette (58) Orinda (60) Rockridge (Oakland) (62) MacArthur (Oakland) (64) 19th St. Oakland (66) 12th St. Oakland City Center (68) North Concord/Martinez (70) Castro Valley (73) Dublin/Pleasanton (75) Pittsburg/Bay Point (78) Daly City (91) Daly City (92) Balboa Park (SF) (94) Glen Park (SF) (96) 24th St. Mission (SF) (98)"
test_command="${python_command} muni.py --list-stops BART~747"
output=`${python_command} muni.py --list-stops BART~747`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	printf "\e[32mPASS\e[0m: $test_command\n"
	echo "PASS: $test_command" >> "logs/templog.txt"
else
	printf "\e[31;4mFAIL\e[0m: $test_command\n"
	echo "FAIL: $test_command" >> "logs/templog.txt"
	echo $output >> "logs/templog.txt"
	echo $expected_result >> "logs/templog.txt"
fi



echo "" | tee -a "logs/templog.txt"
echo "Caltrain" | tee -a "logs/templog.txt"

expected_result="Direction: NORTHBOUND TO SAN FRANCISCO San Francisco Caltrain Station (70011) 22nd Street Caltrain Station (70021) Millbrae Caltrain Station (70061) San Mateo Caltrain Station (70091) Hillsdale Caltrain Station (70111) Redwood City Caltrain Station (70141) Menlo Park Caltrain Station (70161) Palo Alto Caltrain Station (70171) Mountain View Caltrain Station (70211) Sunnyvale Caltrain Station (70221) San Jose Diridon Caltrain Station (70261) Tamien Caltrain Station (70271)"
test_command="${python_command} muni.py --list-stops 'Caltrain~BABY BULLET~NB'"
output=`${python_command} muni.py --list-stops 'Caltrain~BABY BULLET~Nb'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	printf "\e[32mPASS\e[0m: $test_command\n"
	echo "PASS: $test_command" >> "logs/templog.txt"
else
	printf "\e[31;4mFAIL\e[0m: $test_command\n"
	echo "FAIL: $test_command" >> "logs/templog.txt"
	echo $output >> "logs/templog.txt"
	echo $expected_result >> "logs/templog.txt"
fi

expected_result="Direction: SOUTHBOUND TO SAN JOSE DIRIDON San Francisco Caltrain Station (70012) 22nd Street Caltrain Station (70022) Millbrae Caltrain Station (70062) Hillsdale Caltrain Station (70112) Redwood City Caltrain Station (70142) Menlo Park Caltrain Station (70162) Palo Alto Caltrain Station (70172) Mountain View Caltrain Station (70212) San Jose Diridon Caltrain Station (70262)"
test_command="${python_command} muni.py --list-stops 'Caltrain~BABY BULLET~SB1'"
output=`${python_command} muni.py --list-stops 'Caltrain~BABY BULLET~SB1'`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	printf "\e[32mPASS\e[0m: $test_command\n"
	echo "PASS: $test_command" >> "logs/templog.txt"
else
	printf "\e[31;4mFAIL\e[0m: $test_command\n"
	echo "FAIL: $test_command" >> "logs/templog.txt"
	echo $output >> "logs/templog.txt"
	echo $expected_result >> "logs/templog.txt"
fi



echo "" | tee -a "logs/templog.txt"
echo "SF-MUNI" | tee -a "logs/templog.txt"

expected_result="Direction: Outbound to Ocean Beach via Downtown Carl St and Cole St (13909) Carl St and Hillway Ave (13912) Carl St and Stanyan St (13914) Duboce Ave and Church St (14447) Embarcadero Folsom St (14510) Irving St and 2nd Ave (15118) Irving St and 4th Ave (15119) Irving St and 7th Ave (15121) Irving St and 9th Ave (15123) Judah St and 9th Ave (15193) Judah St and 12th Ave (15195) Judah St and 16th Ave (15198) Judah St and 19th Ave (15199) Judah St and 23rd Ave (15202) Judah St and 25th Ave (15203) Judah St and 28th Ave (15205) Judah St and 31st Ave (15207) Judah St and 34th Ave (15209) Judah St and 40th Ave (15211) Judah St and 43rd Ave (15213) Judah St and 46th Ave (15215) Judah St and Funston Ave (15219) Judah and La Playa St (15221) Judah St and Sunset Blvd (15224) King St and 2nd St (15237) King St and 4th St (15240) Montgomery Station Outbound (16994) Powell Station Outbound (16995) Van Ness Station OB (16996) Civic Center Station Outbound (16997) The Embarcadero and Brannan St (17145) Embarcadero Station Outbound (17217) Judah St and La Playa St (17219) Sunset Tunnel East Portal (17252)"
test_command="${python_command} muni.py --list-stops SF-MUNI~N~Outbound"
output=`${python_command} muni.py --list-stops SF-MUNI~N~Outbound`
output=`echo $output`
if [[ "$output" == "$expected_result" ]] ; then
	printf "\e[32mPASS\e[0m: $test_command\n"
	echo "PASS: $test_command" >> "logs/templog.txt"
else
	printf "\e[31;4mFAIL\e[0m: $test_command\n"
	echo "FAIL: $test_command" >> "logs/templog.txt"
	echo $output >> "logs/templog.txt"
	echo $expected_result >> "logs/templog.txt"
fi



# Now rename the log file
timestamp=`date +%s`
mv "logs/templog.txt" "logs/${timestamp}-${current_branch}.txt"