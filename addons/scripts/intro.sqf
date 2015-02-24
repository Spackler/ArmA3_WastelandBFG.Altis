//	@file Version: 1.0
//	@file Name: intro.sqf
//	@file Author: Cael817, original file by HellsGateGaming.com and IT07
//	@file Created: 20140724 19:34

_onScreenTime = 7;

sleep 60;

_role1 = "Bravo Foxtrot Gaming";
_role1names = ["BFG A3Wasteland Altis v1.1"];
_role2 = "Website/Forums";
_role2names = ["www.BravoFoxtrotGaming.com"];
_role3 = "Suggested Mods";
_role3names = ["JSRS3:DragonFyre, Blastcore-A3, CBA_A3, VTS Weapon Resting"];
_role4 = "Earplugs";
_role4names = ["Put in your earplugs by using the END key."];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.50' color='#e11f26' align='left'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='left'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [

[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names]
];