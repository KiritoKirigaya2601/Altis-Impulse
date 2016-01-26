waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
/*
File: fn_statusBar.sqf
Author: Some French Guy named Osef I presume, given the variable on the status bar
Edited by: [midgetgrimm], Additional Modification by Bond (Server Uptime)
Description: Puts a small bar in the bottom right of screen to display in-game information
 
*/
_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
4 cutRsc ["osefStatusBar","PLAIN"];
systemChat format["[Server] Loading game server info..., Please Wait"];
 
[] spawn {
        sleep 5;
        _counter = 180;
        _timeSinceLastUpdate = 0;
        while {true} do
        {
                sleep 1;
                _counter = _counter - 1;
                ((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetStructuredText
                parseText format["<t color='#F8F8FF'><img size='1.6' image='icons\fps.paa'/>: %1 </t> | <t color='#F8F8FF'><img size='1.6' image='icons\cop.paa'/>: %2 </t>|<t color='#F8F8FF'><img size='1.6' image='icons\civ.paa'/>: %3 </t>| <t color='#F8F8FF'><img size='1.6' image='icons\medic.paa'/>: %4</t> | <t color='#F8F8FF'><img size='1.6' image='icons\money.paa'/>: %6 </t>| <t color='#F8F8FF'><img size='1.6' image='icons\bank.paa'/>: %7 </t>|<t color='#F8F8FF'><img size='1.6' image='icons\ts3.paa'/>ts.altisimpulse.co.uk:9166</t>", round diag_fps, west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits, east countSide playableUnits,[life_cash] call life_fnc_numberText,[life_atmbank] call life_fnc_numberText];
        };
};