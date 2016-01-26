#include "..\..\script_macros.hpp"
/*
	File: blindfoldOff.sqf
	Author: Jason_000
	Description: Takes the blindfold off

	
*/
private["_player"];
_player = cursorTarget;


if(isNull _player) exitWith {};
if(!isPlayer _player) exitWith {};
if(player distance _player > 4) exitWith {};
//end of checks
	
[[_player,profileName],"life_fnc_blindfoldActionOff",_player,false] call life_fnc_MP;