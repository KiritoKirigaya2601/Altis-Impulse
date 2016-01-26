#include "..\script_macros.hpp"
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private "_end";
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;

if(life_blacklisted) exitWith {
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(!(str(player) in [""])) then {
	if((FETCH_CONST(life_coplevel) == 0) && (FETCH_CONST(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

// Set Paycheck for Police For Each rank
switch (FETCH_CONST(life_coplevel)) do 
			{
	             case 1: {life_paycheck = life_paycheck + 1750;}; // Rank 1
	             case 2: {life_paycheck = life_paycheck + 2750;}; // Rank 2
	             case 3: {life_paycheck = life_paycheck + 3750;}; // Rank 3
	             case 4: {life_paycheck = life_paycheck + 4750;}; // Rank 4
	             case 5: {life_paycheck = life_paycheck + 5750;}; // Rank 5 
	             case 6: {life_paycheck = life_paycheck + 6750;}; // Rank 6
	             case 7: {life_paycheck = life_paycheck + 7750;}; // Rank 7
				 case 8: {life_paycheck = life_paycheck + 8750;}; // Rank 8
				 case 9: {life_paycheck = life_paycheck + 9750;}; // Rank 9
				 case 10: {life_paycheck = life_paycheck + 10750;}; // Rank 10
			};


player setVariable["rank",(FETCH_CONST(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
[] call life_fnc_playerSkins;
{_x setMarkerAlphaLocal 0} forEach ["gang_area_1","gang_area_2","gang_area_3","gold_bar_dealer","Rebelop"];