libName = "JOLPE_test"

foreach(cellId ddGetObj(libName)->cells
	;Do processing here:
	; cv = dbOpenCellViewByType(libName cellId->name viewId->name)
	printf("Processing %s %s\n" libName cellId->name)
    design(libName cellId->name "schematic")
    createNetlist(?recreateAll t ?display nil) 
    simulator('spectre) 
) 
