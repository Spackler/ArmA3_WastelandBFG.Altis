// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.2
//	@file Name: playerActions.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [GoT] JoSchaap, AgentRev
//	@file Created: 20/11/2012 05:19

{ [player, _x] call fn_addManagedAction } forEach
[
	["Holster Weapon", { player action ["SwitchWeapon", player, player, 100] }, [], -97, false, false, "", "vehicle player == player && currentWeapon player != ''"],
	["Unholster Primary Weapon", { player action ["SwitchWeapon", player, player, 0] }, [], -97, false, false, "", "vehicle player == player && currentWeapon player == '' && primaryWeapon player != ''"],

	[format ["<img image='client\icons\playerMenu.paa' color='%1'/> <t color='%1'>[</t>Player Menu<t color='%1'>]</t>", "#FF8000"], "client\systems\playerMenu\init.sqf", [], -98, false], //, false, "", ""],

	["<img image='client\icons\money.paa'/> Pickup Money", "client\actions\pickupMoney.sqf", [], 1, false, false, "", "{_x getVariable ['owner', ''] != 'mission'} count (player nearEntities ['Land_Money_F', 5]) > 0"],

	["<img image='\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\transport_ca.paa'/> <t color='#FFFFFF'>Cancel Action</t>", { doCancelAction = true }, [], 1, false, false, "", "mutexScriptInProgress"],

	["<img image='client\icons\repair.paa'/> Salvage", "client\actions\salvage.sqf", [], 1.1, false, false, "", "!isNull cursorTarget && !alive cursorTarget && {cursorTarget isKindOf 'AllVehicles' && !(cursorTarget isKindOf 'Man') && player distance cursorTarget <= (sizeOf typeOf cursorTarget / 3) max 2}"],

	["<img image='client\icons\health.paa'/> Heal Self", "addons\scripts\healself.sqf", [], 1, false, false, "", "(damage player > 0.05) && ('FirstAidKit' in (items player))"],
	["Resupply", "addons\scripts\resupply_actions.sqf", [], 51, false, false, "", "!isNull cursorTarget && alive cursorTarget && {{ cursorTarget isKindOf _x } count ['O_Heli_Transport_04_covered_F', 'O_Truck_03_device_F'] > 0 ;} && !(vehicle player == player) && (player distance cursortarget) < 15"],
	
	["<img image='client\icons\r3f_unlock.paa'/> Break in and hotwire", "addons\breakLock\breakLock.sqf", [cursorTarget], 1,false,false,"","!isNull cursorTarget && vehicle player == player && {{ cursorTarget isKindOf _x } count ['LandVehicle', 'Ship', 'Air'] > 0 ;} && cursorTarget getVariable ['ownerUID',''] != getPlayerUID player && locked cursorTarget >= 2 && cursorTarget distance player < 7 && ('ToolKit' in (items player)) && isNil {cursorTarget getVariable 'A3W_Truck'}"],
	
	["[0]"] call getPushPlaneAction,
	["<img image='client\icons\push.paa'/> Push vehicle", "server\functions\pushVehicle.sqf", [2.5, true], 1, false, false, "", "[2.5] call canPushVehicleOnFoot"],
	["<img image='client\icons\push.paa'/> Push vehicle forward", "server\functions\pushVehicle.sqf", [2.5], 1, false, false, "", "[2.5] call canPushWatercraft"],
	["<img image='client\icons\push.paa'/> Push vehicle backward", "server\functions\pushVehicle.sqf", [-2.5], 1, false, false, "", "[-2.5] call canPushWatercraft"],

	["<t color='#FF0000'>Emergency eject</t>", "client\actions\forceEject.sqf", [], -9, false, true, "", "(vehicle player) isKindOf 'Air' && !((vehicle player) isKindOf 'ParachuteBase')"],
	["<t color='#FF00FF'>Open magic parachute</t>", fn_openParachute, [], 20, true, true, "", "vehicle player == player && (getPos player) select 2 > 2.5"]
];

if (["A3W_purchasedVehicleSaving"] call isConfigOn || {["A3W_missionVehicleSaving"] call isConfigOn}) then
{
	[player, ["<img image='client\icons\save.paa'/> Force Save Vehicle", { pvar_manualVehicleSave = netId cursorTarget; publicVariableServer "pvar_manualVehicleSave" }, [], -9.5, false, true, "", "call canForceSaveVehicle"]] call fn_addManagedAction;
};

// Hehehe...
if !(288520 in getDLCs 1) then
{
	[player, ["<t color='#00FFFF'>Get in as Driver</t>", "client\actions\moveInDriver.sqf", [], 6, true, true, "", "cursorTarget isKindOf 'Kart_01_Base_F' && player distance cursorTarget < 3.4 && isNull driver cursorTarget"]] call fn_addManagedAction;
};

// Morehehe...
if !(304380 in getDLCs 1) then 
{
	[player, ["<img image='client\icons\driver.paa'/> Get in as Pilot", "client\actions\moveInDriver.sqf", [], 6, true, true, "", "(locked cursorTarget != 2) && ((cursorTarget isKindOf 'B_Heli_Transport_03_base_F') or (cursorTarget isKindOf 'Heli_Transport_04_base_F')) && player distance cursorTarget < 10 && isNull driver cursorTarget"]] call fn_addManagedAction;
	[player, ["<img image='client\icons\gunner.paa'/> Get in as Copilot", "client\actions\moveInTurret.sqf", [0], 6, true, true, "", "(locked cursorTarget != 2) && ((cursorTarget isKindOf 'B_Heli_Transport_03_base_F') or (cursorTarget isKindOf 'Heli_Transport_04_base_F')) && player distance cursorTarget < 10 && isNull (cursorTarget turretUnit [0])"]] call fn_addManagedAction;
	[player, ["<img image='client\icons\gunner.paa'/> Get in as Left door gunner", "client\actions\moveInTurret.sqf", [1], 6, true, true, "", "(locked cursorTarget != 2) && ((cursorTarget isKindOf 'B_Heli_Transport_03_base_F')) && player distance cursorTarget < 10 && isNull (cursorTarget turretUnit [1])"]] call fn_addManagedAction;
	[player, ["<img image='client\icons\gunner.paa'/> Get in as Right door gunner", "client\actions\moveInTurret.sqf", [2], 6, true, true, "", "(locked cursorTarget != 2) && ((cursorTarget isKindOf 'B_Heli_Transport_03_base_F')) && player distance cursorTarget < 10 && isNull (cursorTarget turretUnit [2])"]] call fn_addManagedAction;
};
