#include "..\..\script_macros.hpp"
/*
	File: fn_actionKeyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master action key handler, handles requests for picking up various items and
	interacting with other players (Cops = Cop Menu for unrestrain,escort,stop escort, arrest (if near cop hq), etc).
*/
private["_curTarget","_isWater"];
_curTarget = cursorTarget;
if(life_action_inUse) exitWith {}; //Action is in use, exit to prevent spamming.
if(life_interrupted) exitWith {life_interrupted = false;};
_isWater = surfaceIsWater (visiblePositionASL player);

//Check if the player is near an ATM.
if((call life_fnc_nearATM) && {!dialog}) exitWith {
	[] call life_fnc_atmMenu;
};

if(isNull _curTarget) exitWith {
	if(_isWater) then {
		private "_fish";
		_fish = (nearestObjects[visiblePosition player,["Fish_Base_F"],3]) select 0;
		if(!isNil "_fish") then {
			[_fish] call life_fnc_catchFish;
		};
	} else {
		if(playerSide == civilian && !life_action_gathering) then {
			_handle = [] spawn life_fnc_gather;
			waitUntil {scriptDone _handle};
			life_action_gathering = false;
		};
	};
};


if(!alive _curTarget && _curTarget isKindOf "Animal" && !(EQUAL((typeOf _curTarget),"Turtle_F"))) exitWith {
	[_curTarget] call life_fnc_gutAnimal;
};

if(_curTarget isKindOf "House_F" && {player distance _curTarget < 12} OR ((nearestObject [[16019.5,16952.9,0],"Land_Dome_Big_F"]) == _curTarget OR (nearestObject [[16019.5,16952.9,0],"Land_Research_house_V1_F"]) == _curTarget)) exitWith {
	[_curTarget] call life_fnc_houseMenu;
};

if(dialog) exitWith {}; //Don't bother when a dialog is open.
if(vehicle player != player) exitWith {}; //He's in a vehicle, cancel!
life_action_inUse = true;

//Temp fail safe.
[] spawn {
	sleep 60;
	life_action_inUse = false;
};

//Check if it's a dead body.
if(_curTarget isKindOf "Man" && {!alive _curTarget} && {playerSide in [west,independent]}) exitWith {
	//Hotfix code by ins0
	if(((playerSide == blufor && {(EQUAL(LIFE_SETTINGS(getNumber,"revive_cops"),1))}) || playerSide == independent) && {"Medikit" in (items player)}) then {
		[_curTarget] call life_fnc_revivePlayer;
	};
};

if(isPlayer _curTarget && _curTarget isKindOf "Man") then {
	if((_curTarget GVAR ["restrained",false]) && !dialog && playerSide == civilian) then {
		[_curTarget] call life_fnc_InteractionMenu;
	};
};

//If target is a player then check if we can use the cop menu.
if(isPlayer _curTarget && _curTarget isKindOf "Man") then {
	if((_curTarget GVAR ["restrained",false]) && !dialog && playerSide == west) then {
		[_curTarget] call life_fnc_copInteractionMenu;
	};
} else {
	//OK, it wasn't a player so what is it?
	private["_isVehicle","_miscItems","_money","_list"];
	
	_list = ["landVehicle","Ship","Air"];
	_isVehicle = if(KINDOF_ARRAY(_curTarget,_list)) then {true} else {false};
	_miscItems = ["Land_BottlePlastic_V1_F","Land_TacticalBacon_F","Land_Can_V3_F","Land_CanisterFuel_F","Land_Suitcase_F"];
	_animalTypes = ["Salema_F","Ornate_random_F","Mackerel_F","Tuna_F","Mullet_F","CatShark_F","Turtle_F"];
	_money = "Land_Money_F";
	
	//It's a vehicle! open the vehicle interaction key!
	if(_isVehicle) then {
		if(!dialog) then {
			if(player distance _curTarget < SEL(SEL(boundingBox _curTarget,1),0)+2) then {
				[_curTarget] call life_fnc_vInteractionMenu;
			};
		};
	} else {
		//Is it a animal type?
		if((typeOf _curTarget) in _animalTypes) then {
			if(EQUAL((typeOf _curTarget),"Turtle_F") && !alive _curTarget) then {
				private "_handle";
				_handle = [_curTarget] spawn life_fnc_catchTurtle;
				waitUntil {scriptDone _handle};
			} else {
				private "_handle";
				_handle = [_curTarget] spawn life_fnc_catchFish;
				waitUntil {scriptDone _handle};
			};
		} else {
			//OK, it wasn't a vehicle so let's see what else it could be?
			if((typeOf _curTarget) in _miscItems) then {
				[_curTarget,player,false] remoteExecCall ["TON_fnc_pickupAction",RSERV];
			} else {
				//It wasn't a misc item so is it money?
				if(EQUAL((typeOf _curTarget),_money) && {!(_curTarget GVAR ["inUse",false])}) then {
					[_curTarget,player,true] remoteExecCall ["TON_fnc_pickupAction",RSERV];
				};
			};
		};
	};
};