#include "..\..\script_macros.hpp"
/*
    File: fn_playerSkins.sqf
    Author: Daniel Stuart

    Description:
    Sets skins for players by their side and uniform.
*/
switch(playerSide) do {
	case civilian: {
		if(EQUAL(LIFE_SETTINGS(getNumber,"civ_skins"),1)) then {
			if(uniform player == "U_C_Poloshirt_blue") then {
				player setObjectTextureGlobal [0, "textures\civ\BIG.jpg"];
			};
			if(uniform player == "U_C_Poloshirt_burgundy") then {
				player setObjectTextureGlobal [0, "textures\civ\SIMP1.paa"];
			};
			if(uniform player == "U_C_Poloshirt_stripped") then {
				player setObjectTextureGlobal [0, "textures\civ\DEX_BN.jpg"];
			};
			if(uniform player == "U_C_Poloshirt_tricolour") then {
				player setObjectTextureGlobal [0, "textures\civ\DRW_Dal.jpg"];
			};
			if(uniform player == "U_C_Poloshirt_salmon") then {
				player setObjectTextureGlobal [0, "textures\civ\DRW_UK.jpg"];
			};
			if(uniform player == "U_C_Poloshirt_redwhite") then {
				player setObjectTextureGlobal [0, "textures\civ\AmerHorStory.paa"];
			};
			if(uniform player == "U_C_Commoner1_1") then {
				player setObjectTextureGlobal [0, "textures\civ\FUT2.jpg"];
			};
			if(uniform player == "U_C_Commoner1_2") then {
				player setObjectTextureGlobal [0, "textures\civ\AltisImpulse.jpg"];
			};
			if(uniform player == "U_C_Commoner1_3") then {
				player setObjectTextureGlobal [0, "textures\civ\Panda.jpg"];
			};
		};
	};
	case west: {
		if(uniform player == "U_O_OfficerUniform_ocamo") then {
			player setObjectTextureGlobal [0, "textures\police\ManPol_Uniform_PC.paa"];
		};
	};
	case independent: {
		if(uniform player == "U_B_CombatUniform_mcam") then {
			player setObjectTextureGlobal [0, "textures\medic\paramedic_uniform_hv.jpg"];
		};
	};
};
