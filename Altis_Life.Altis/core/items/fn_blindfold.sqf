#include "..\..\script_macros.hpp"
/*
	File: fn_blindfold.sqf
	Author: Jason_000
	Description:
	Blindfolds the chosen player
	
*/
private["_player"];
_player = cursorTarget;

//Checks to see if the person you are going to punch in the balls is alive/is actually a player..
if(isNull _player) exitWith {};
if(!isPlayer _player) exitWith {};
if(player distance _player > 4) exitWith {};
if(!(_player getVariable "Incapacitated")) exitWith {hint "They need to be Knocked Out"};
if(!([false,"blindfold",1] call life_fnc_handleInv)) exitWith {};
//end of checks
	

	titleText[format["You have blindfolded %1!",_player] ,"PLAIN"]; //Doesn't work properly watch this
	sleep 0.08;
	[[_player,profileName],"life_fnc_blindfoldAction",_player,false] call life_fnc_MP;