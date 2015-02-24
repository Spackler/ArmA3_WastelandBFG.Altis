// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: bases.sqf
//	@file Author: LouD, Micovery
//	@file Description: Admin base script
//  @file Special thanks to Micovery for most of the code!

diag_log format["Loading base script functions..."];

LCK_frontdoorarray = ["frontdoor1","frontdoor2","frontdoor3","frontdoor4"];
LCK_shopdoorarray = ["shopdoor1","shopdoor2","shopdoor3"];
LCK_hangar1 = ["h1door1","h1door2","h1door3","h1door4","h1door5","h1door6"];
LCK_hangar2 = ["h2door1","h2door2","h2door3","h2door4","h2door5","h2door6"];
LCK_hangar3 = ["h3door1","h3door2","h3door3","h3door4","h3door5","h3door6"];
LCK_hangar4 = ["h4door1","h4door2","h4door3","h4door4","h4door5","h4door6"];
LCK_hangar5 = ["h5door1","h5door2","h5door3","h5door4","h5door5","h5door6"];
LCK_hangar6 = ["h6door1","h6door2","h6door3","h6door4","h6door5","h6door6"];
LCK_hangar7 = ["h7door1","h7door2","h7door3","h7door4","h7door5","h7door6"];
LCK_hangar8 = ["h8door1","h8door2","h8door3","h8door4","h8door5","h8door6"];


LCK_Frontunlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, true], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_frontdoorarray;

	hint format["The base is unlocked"];
};

LCK_Frontlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, false], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_frontdoorarray;

	hint format["The base is locked"];
};

LCK_Shopunlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, true], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_shopdoorarray;

	hint format["The shops are unlocked"];
};

LCK_Shoplock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, false], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_shopdoorarray;

	hint format["The shops are locked"];
};

LCK_Hangar1unlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, true], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangar1;

	hint format["The hangar is unlocked"];
};

LCK_Hangar1lock = {
	{
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, false], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangar1;

	hint format["The hangar is locked"];
};

LCK_Hangar2unlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, true], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangar2;

	hint format["The hangar is unlocked"];
};

LCK_Hangar2lock = {
	{
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, false], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangar2;

	hint format["The hangar is locked"];
};

LCK_Hangar3unlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, true], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangar3;

	hint format["The hangar is unlocked"];
};

LCK_Hangar3lock = {
	{
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, false], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangar3;

	hint format["The hangar is locked"];
};

LCK_Hangar4unlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, true], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangar4;

	hint format["The hangar is unlocked"];
};

LCK_Hangar4lock = {
	{
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, false], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangar4;

	hint format["The hangar is locked"];
};

LCK_Hangar5unlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, true], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangar5;

	hint format["The hangar is unlocked"];
};

LCK_Hangar5lock = {
	{
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, false], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangar5;

	hint format["The hangar is locked"];
};

LCK_Hangar6unlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, true], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangar6;

	hint format["The hangar is unlocked"];
};

LCK_Hangar6lock = {
	{
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, false], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangar6;

	hint format["The hangar is locked"];
};

LCK_Hangar7unlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, true], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangar7;

	hint format["The hangar is unlocked"];
};

LCK_Hangar7lock = {
	{
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, false], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangar7;

	hint format["The hangar is locked"];
};

LCK_Hangar8unlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, true], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangar8;

	hint format["The hangar is unlocked"];
};

LCK_Hangar8lock = {
	{
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, false], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangar8;

	hint format["The hangar is locked"];
};


arrays_intersect = {
	private["_arr1", "_arr2"];
	_arr1 = _this select 0;
	_arr2 = _this select 1;
	
	private["_result"];
	_result = false;

	{
		private["_item1"];
		_item1 = _x;
		_item1 = if (typeName _item1 != typeName "") then {str(_item1)} else {_item1};

//		player groupChat format["_item1 = %1", _item1]; // Uncomment this line if you want to test if any object is found
		{
			private["_item2"];
			_item2 = _x;
			_item2 = if (typeName _item2 != typeName "") then {str(_item2)} else {_item2};
  
//			player groupChat format["_item1 = %1, _item2 = %2", _item1, _item2]; // Uncomment this line if you want to test if any object is found
  
			if (_item1 == _item2) exitWith {
			_result = true;
			};
		} forEach _arr2;

		if (_result) exitWith {true};
	} forEach _arr1;
  
	(_result)
};

showLockUnlockFrontAction = {
	private["_objects"];
	_objects =(nearestObjects [player, ["Land_HBarrierWall_corridor_F"], 5]);
	if (not([_objects, LCK_frontdoorarray] call arrays_intersect)) exitWith {false};
	(true)
};

showLockUnlockShopAction = {
	private["_objects"];
	_objects =(nearestObjects [player, ["Land_Canal_WallSmall_10m_F"], 5]);
	if (not([_objects, LCK_shopdoorarray] call arrays_intersect)) exitWith {false};
	(true)
};

showLockUnlockHangar1Action = {
	private["_objects"];
	_objects =(nearestObjects [player, ["Land_Canal_WallSmall_10m_F"], 5]);
	if (not([_objects, LCK_hangar1] call arrays_intersect)) exitWith {false};
	(true)
};

showLockUnlockHangar2Action = {
	private["_objects"];
	_objects =(nearestObjects [player, ["Land_Canal_WallSmall_10m_F"], 5]);
	if (not([_objects, LCK_hangar2] call arrays_intersect)) exitWith {false};
	(true)
};

showLockUnlockHangar3Action = {
	private["_objects"];
	_objects =(nearestObjects [player, ["Land_Canal_WallSmall_10m_F"], 5]);
	if (not([_objects, LCK_hangar3] call arrays_intersect)) exitWith {false};
	(true)
};

showLockUnlockHangar4Action = {
	private["_objects"];
	_objects =(nearestObjects [player, ["Land_Canal_WallSmall_10m_F"], 5]);
	if (not([_objects, LCK_hangar4] call arrays_intersect)) exitWith {false};
	(true)
};

showLockUnlockHangar5Action = {
	private["_objects"];
	_objects =(nearestObjects [player, ["Land_Canal_WallSmall_10m_F"], 5]);
	if (not([_objects, LCK_hangar5] call arrays_intersect)) exitWith {false};
	(true)
};

showLockUnlockHangar6Action = {
	private["_objects"];
	_objects =(nearestObjects [player, ["Land_Canal_WallSmall_10m_F"], 5]);
	if (not([_objects, LCK_hangar6] call arrays_intersect)) exitWith {false};
	(true)
};

showLockUnlockHangar7Action = {
	private["_objects"];
	_objects =(nearestObjects [player, ["Land_Canal_WallSmall_10m_F"], 5]);
	if (not([_objects, LCK_hangar7] call arrays_intersect)) exitWith {false};
	(true)
};

showLockUnlockHangar8Action = {
	private["_objects"];
	_objects =(nearestObjects [player, ["Land_Canal_WallSmall_10m_F"], 5]);
	if (not([_objects, LCK_hangar8] call arrays_intersect)) exitWith {false};
	(true)
};

LCK_Actions = {
	private ["_unit"];
	_unit = _this select 0;
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_unlock.paa'/> Unlock frontdoor", LCK_Frontunlock, "", 1, false, false, "","(call showLockUnlockFrontAction)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_lock.paa'/> Lock frontdoor", LCK_Frontlock, "", 1, false, false, "","(call showLockUnlockFrontAction)"];
	
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_unlock.paa'/> Unlock shop", LCK_Shopunlock, "", 1, false, false, "","(call showLockUnlockShopAction)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_lock.paa'/> Lock shop", LCK_Shoplock, "", 1, false, false, "","(call showLockUnlockShopAction)"];

	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_unlock.paa'/> Unlock hangar", LCK_Hangar1unlock, "", 1, false, false, "","(call showLockUnlockHangar1Action)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_lock.paa'/> Lock hangar", LCK_Hangar1lock, "", 1, false, false, "","(call showLockUnlockHangar1Action)"];

	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_unlock.paa'/> Unlock hangar", LCK_Hangar2unlock, "", 1, false, false, "","(call showLockUnlockHangar2Action)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_lock.paa'/> Lock hangar", LCK_Hangar2lock, "", 1, false, false, "","(call showLockUnlockHangar2Action)"];	
	
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_unlock.paa'/> Unlock hangar", LCK_Hangar3unlock, "", 1, false, false, "","(call showLockUnlockHangar3Action)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_lock.paa'/> Lock hangar", LCK_Hangar3lock, "", 1, false, false, "","(call showLockUnlockHangar3Action)"];

	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_unlock.paa'/> Unlock hangar", LCK_Hangar4unlock, "", 1, false, false, "","(call showLockUnlockHangar4Action)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_lock.paa'/> Lock hangar", LCK_Hangar4lock, "", 1, false, false, "","(call showLockUnlockHangar4Action)"];

	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_unlock.paa'/> Unlock hangar", LCK_Hangar5unlock, "", 1, false, false, "","(call showLockUnlockHangar5Action)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_lock.paa'/> Lock hangar", LCK_Hangar5lock, "", 1, false, false, "","(call showLockUnlockHangar5Action)"];

	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_unlock.paa'/> Unlock hangar", LCK_Hangar6unlock, "", 1, false, false, "","(call showLockUnlockHangar6Action)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_lock.paa'/> Lock hangar", LCK_Hangar6lock, "", 1, false, false, "","(call showLockUnlockHangar6Action)"];

	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_unlock.paa'/> Unlock hangar", LCK_Hangar7unlock, "", 1, false, false, "","(call showLockUnlockHangar7Action)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_lock.paa'/> Lock hangar", LCK_Hangar7lock, "", 1, false, false, "","(call showLockUnlockHangar7Action)"];

	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_unlock.paa'/> Unlock hangar", LCK_Hangar8unlock, "", 1, false, false, "","(call showLockUnlockHangar8Action)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_lock.paa'/> Lock hangar", LCK_Hangar8lock, "", 1, false, false, "","(call showLockUnlockHangar8Action)"];
};
//=======================
BaseLockInitialized = true;
