_supply_classes = [];

{ _supply_classes = _supply_classes + [(_x select 0)]; } foreach support_vehicles;

while { true } do {

	{
		if ( (typeof _x) in _supply_classes ) then {
			_x setAmmoCargo 1;
			_x setRepairCargo 1;
			_x setFuelCargo 1;
		};
		sleep 1;
	} foreach vehicles;
	sleep 15;
};