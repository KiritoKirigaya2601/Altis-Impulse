/*
*    Format:
*        level: ARRAY (This is for limiting items to certain things)
*            0: Variable to read from
*            1: Variable Value Type (SCALAR / BOOL / EQUAL)
*            2: What to compare to (-1 = Check Disabled)
*            3: Custom exit message (Optional)
*
*    items: { Classname, Itemname, BuyPrice, SellPrice }
*
*    Itemname only needs to be filled if you want to rename the original object name.
*/
class WeaponShops {
    //Armory Shops
    class gun {
        name = "Billy Joe's Firearms";
        side = "civ";
        license = "gun";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 6500, -1 },
            { "SMG_01_F", "", 70000, 5000 },
            { "hgun_Pistol_heavy_02_F", "", 9850, -1 },
            { "hgun_ACPC2_F", "", 11500, -1 },
            { "hgun_PDW2000_F", "", 20000, -1 },
            { "optic_ACO_grn_smg", "", 2500, -1 },
            { "V_Rangemaster_belt", "", 4900, -1 },
            { "16Rnd_9x21_Mag", "", 25, -1 },
            { "9Rnd_45ACP_Mag", "", 45, -1 },
            { "6Rnd_45ACP_Cylinder", "", 50, -1 },
            { "30Rnd_45ACP_Mag_SMG_01", "", 500, -1 },
            { "30Rnd_9x21_Mag", "", 75, -1 }
        };
    };
 
    class rebel {
        name = "Mohammed's Jihadi Shop";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = {
            { "arifle_TRG20_F", "", 75000, 2500 },
            { "arifle_Mk20_F", "", 60000, 50 },
            { "srifle_EBR_F", "", 190000, 7500 },
            { "arifle_Katiba_F", "", 125000, 350 },
            { "srifle_DMR_01_F", "", 200000, 275 },
            { "srifle_DMR_06_camo_F", "", 450000, 100 },
            { "20Rnd_762x51_Mag", "", 500, 50 },
            { "arifle_SDAR_F", "", 50000, 50 },
            { "optic_ACO_grn", "", 7500, 50 },
            { "optic_Holosight", "", 200, 50 },
            { "acc_flashlight", "", 125, 50 },
            { "optic_Arco", "", 500, 50 },
            { "optic_MRCO", "", 275, 50 },
            { "bipod_02_F_tan", "", 275, 50 },
            { "FirstAidKit", "", 750, 50 },
            { "NVGoggles", "", 750, 50 },
            { "10Rnd_762x54_Mag", "", 500, 50 },
            { "10Rnd_762x51_Mag", "", 500, 50 },
            { "20Rnd_762x51_Mag", "", 500, 50 },
            { "30Rnd_556x45_Stanag", "", 500, 50 },
            { "30Rnd_45ACP_Mag_SMG_01", "", 500, 50 },
            { "30Rnd_65x39_caseless_green", "", 500, 50 }
        };
    };
   
    class rebelexp {
        name = "Bombs r Us";
        side = "civ";
        license = "rebelexp";
        level[] = { "", "", -1, "" };
        items[] = {
            { "IEDUrbanSmall_Remote_Mag", "", 2000000, -1 },
            { "IEDLandSmall_Remote_Mag", "", 2000000, -1 },
            { "SatchelCharge_Remote_Mag", "", 2000000, -1 },
            { "IEDUrbanBig_Remote_Mag", "", 2000000, -1 },
            { "IEDLandBig_Remote_Mag", "", 2000000, -1 },
            { "DemoCharge_Remote_Mag", "", 2000000, -1 },
            { "ClaymoreDirectionalMine_Remote_Mag", "", 2000000, -1 },
            { "APERSMine_Range_Mag", "", 2000000, -1 },
            { "APERSBoundingMine_Range_Mag", "", 2000000, -1 },
            { "SLAMDirectionalMine_Wire_Mag", "", 2000000, -1 },
            { "APERSTripMine_Wire_Mag", "", 2000000, -1 }
        };
    };
 
    class gang {
        name = "Hideout Armament";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 1500, 500 },
            { "hgun_Pistol_heavy_02_F", "", 2500, -1 },
            { "hgun_ACPC2_F", "", 4500, -1 },
            { "hgun_PDW2000_F", "", 9500, -1 },
            { "optic_ACO_grn_smg", "", 950, 250 },
            { "V_Rangemaster_belt", "", 1900, -1 },
            { "16Rnd_9x21_Mag", "", 25, -1 },
            { "9Rnd_45ACP_Mag", "", 45, -1 },
            { "6Rnd_45ACP_Cylinder", "", 50, -1 },
            { "30Rnd_9x21_Mag", "", 75, -1 }
        };
    };
 
    //Basic Shops
    class genstore {
        name = "Altis General Store";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "ItemMap", "", 50, 35 },
            { "ItemCompass", "", 50, 25 },
            { "ItemWatch", "", 50, -1 },
            { "ToolKit", "", 250, 75 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 2000, 980 },
            { "Chemlight_red", "", 300, -1 },
            { "Chemlight_yellow", "", 300, 50 },
            { "Chemlight_green", "", 300, 50 },
            { "Chemlight_blue", "", 300, 50 }
        };
    };
 
    //Cop Shops
    class cop_pcso {
        name = "pcso Cop Shop";
        side = "cop";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "arifle_sdar_F", "Taser Rifle", 0, -1 },
            { "hgun_P07_snds_F", "Stun Pistol", 0, -1 },
            { "hgun_P07_F", "", 0, -1 },
            { "HandGrenade_Stone", "Flashbang", 0, -1 },
            { "Binocular", "", 0, -1 },
            { "ItemGPS", "", 0, -1 },
            { "ToolKit", "", 0, -1 },
            { "muzzle_snds_L", "", 0, -1 },
            { "FirstAidKit", "", 0, -1 },
            { "Medikit", "", 0, -1 },
            { "NVGoggles", "", 0, -1 },
            { "16Rnd_9x21_Mag", "", 0, -1 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 0, -1 }
        };
    };
 
    class cop_pc {
        name = "Altis pc Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 2, "You must be a Patrol Officer Rank!" };
        items[] = {
            { "arifle_MX_F", "", 0, -1 },
            { "SMG_02_ACO_F", "", 0, -1 },
            { "HandGrenade_Stone", "Flashbang", 0, -1 },
            { "MineDetector", "", 0, -1 },
            { "acc_flashlight", "", 0, -1 },
            { "optic_Holosight", "", 0, -1 },
            { "optic_Arco", "", 0, -1 },
            { "muzzle_snds_H", "", 0, -1 },
            { "30Rnd_65x39_caseless_mag", "", 0, -1 },
            { "30Rnd_9x21_Mag", "", 0, -1 }
        };
    };
 
    class cop_sergeant {
        name = "Altis Sergeant Officer Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 3, "You must be a Sergeant Rank!" };
        items[] = {
            { "SMG_02_ACO_F", "", 0, -1 },
            { "hgun_ACPC2_F", "", 0, -1 },
            { "HandGrenade_Stone", "Flashbang", 0, -1 },
            { "arifle_MXC_F", "", 0, -1 },
            { "optic_Arco", "", 0, -1 },
            { "muzzle_snds_H", "", 0, -1 },
            { "30Rnd_65x39_caseless_mag", "", 0, -1 },
            { "30Rnd_9x21_Mag", "", 0, -1 },
            { "9Rnd_45ACP_Mag", "", 0, -1 }
        };
    };
   
    class cop_inspector {
        name = "Altis inspector Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 4, "You must be a Sergeant Rank!" };
        items[] = {
            { "SMG_02_ACO_F", "", 0, -1 },
            { "hgun_ACPC2_F", "", 0, -1 },
            { "HandGrenade_Stone", "Flashbang", 0, -1 },
            { "arifle_MXC_F", "", 0, -1 },
            { "optic_Arco", "", 0, -1 },
            { "muzzle_snds_H", "", 0, -1 },
            { "30Rnd_65x39_caseless_mag", "", 0, -1 },
            { "30Rnd_9x21_Mag", "", 0, -1 },
            { "9Rnd_45ACP_Mag", "", 0, -1 }
        };
    };
   
    class cop_chief_inspector {
        name = "Altis chief inspector Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 5, "You must be a Sergeant Rank!" };
        items[] = {
            { "SMG_02_ACO_F", "", 0, -1 },
            { "hgun_ACPC2_F", "", 0, -1 },
            { "HandGrenade_Stone", "Flashbang", 0, -1 },
            { "arifle_MXC_F", "", 0, -1 },
            { "optic_Arco", "", 0, -1 },
            { "muzzle_snds_H", "", 0, -1 },
            { "30Rnd_65x39_caseless_mag", "", 0, -1 },
            { "30Rnd_9x21_Mag", "", 0, -1 },
            { "9Rnd_45ACP_Mag", "", 0, -1 }
        };
    };
   
    class cop_sco19 {
        name = "sco19 Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 6, "You must be a Sergeant Rank!" };
        items[] = {
            { "SMG_02_ACO_F", "", 0, -1 },
            { "hgun_ACPC2_F", "", 0, -1 },
            { "HandGrenade_Stone", "Flashbang", 0, -1 },
            { "arifle_MXC_F", "", 0, -1 },
            { "arifle_MX_GL_F", "", 0, -1 },
            { "srifle_GM6_F", "", 0, -1 },
            { "srifle_DMR_06_camo_F", "", 0, -1 },
            { "optic_Arco", "", 0, -1 },
            { "muzzle_snds_H", "", 0, -1 },
            { "30Rnd_65x39_caseless_mag", "", 0, -1 },
            { "30Rnd_65x39_caseless_mag_Tracer", "", 0, -1 },
            { "30Rnd_9x21_Mag", "", 0, -1 },
            { "5Rnd_127x108_APDS_Mag", "", 0, -1 },
            { "20Rnd_762x51_Mag", "", 0, -1 },
            { "20Rnd_762x51_Mag", "", 0, -1 },
            { "9Rnd_45ACP_Mag", "", 0, -1 },
            { "1Rnd_SmokeBlue_Grenade_shell", "", 0, -1 },
            { "1Rnd_SmokeRed_Grenade_shell", "", 0, -1 },
            { "3Rnd_Smoke_Grenade_shell", "", 0, -1 }
        };
    };
   
    class cop_npas {
        name = "npas Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 7, "You must be a Sergeant Rank!" };
        items[] = {
            { "arifle_MXC_F", "", 0, -1 },
            { "hgun_ACPC2_F", "", 0, -1 },
            { "optic_Arco", "", 0, -1 },
            { "muzzle_snds_H", "", 0, -1 },
            { "30Rnd_65x39_caseless_mag", "", 0, -1 },
            { "9Rnd_45ACP_Mag", "", 0, -1 }
        };
    };

    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "U_B_CombatUniform_mcam", "", 0, -1 },
			{ "ItemGPS", "", 0, -1 },
            { "Binocular", "", 0, -1 },
            { "ToolKit", "", 0, -1 },
            { "FirstAidKit", "", 0, -1 },
            { "Medikit", "", 0, -1 },
            { "NVGoggles", "", 0, -1 },
            { "B_FieldPack_ocamo", "", 0, -1 }
        };
    };
	
};