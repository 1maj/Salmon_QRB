#include "\a3\editor_f\Data\Scripts\dikCodes.h"
["Quick Release Buckle", "salmon_qrb", ["Release Ruck", "Press to quick release your bag"], {[player] spawn fnc_salmon_qrb}, {}, [DIK, [false, false, false]]] call CBA_fnc_addKeybind;
fnc_salmon_qrb = {
	_player	=	_this select 0;
	if !(backpack _player == "") then {
		addCamShake [15, 1, 5]; 
		playSound3D ["a3\sounds_f\characters\parachute\turning_rope_5.wss", _player, false, getPosASL _player, 4, 0.8, 10];
		sleep 0.4;
		[_player] call ace_common_fnc_dropBackpack;
	};
};