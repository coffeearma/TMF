#include "\x\tmf\addons\adminmenu\script_component.hpp"

disableSerialization;
params ["_display"];

if (!isNil QGVAR(utilityTabControls)) then {
    {
        ctrlDelete _x;
    } forEach GVAR(utilityTabControls);
    GVAR(utilityTabControls) = nil;
};

{
    _x ctrlShow false;
    _x ctrlEnable false;
} forEach GVAR(utilityTabBaseControls);
