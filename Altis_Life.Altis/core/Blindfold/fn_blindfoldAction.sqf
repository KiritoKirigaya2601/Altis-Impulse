#include "..\..\script_macros.hpp"
/*
	File: fn_blindfoldAction.sqf
	Author: Bryan "Tonic" Boardwine, edited by Jason_000
	
	Description:
	Starts and monitors the knocked out state.
*/
private["_target","_who","_obj"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_who = [_this,1,"",[""]] call BIS_fnc_param;
if(isNull _target) exitWith {};
if(_target != player) exitWith {};
if(EQUAL(_who,"")) exitWith {};


titleText[format[localize "You have been blinfolded",_who],"PLAIN"];


cutText ["", "BLACK OUT"];
hint "You Are Blindfolded!";

sleep 600; //This needs reworking

cutText ["", "BLACK IN"];
hint "Your blindfold has flew off!";