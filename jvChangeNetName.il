procedure( jvChangeNetName()

	x=geGetSelSet()

	foreach(text x~>objType=="label"
		net=theLabel
	);

	foreach(wire x~>objType=="path"
		
	)

)


procedure( jvChangeNetName_decap()

	x=geGetSelSet()

	foreach(decap geGetSelSet()
		CCSPropagateNet( decap~>name "vss" "MINUS")	
		CCSPropagateNet( decap~>name "vdd" "PLUS")

	);foreach

);procedure


procedure( jvChangeNetName_inst()

	x=geGetSelSet()

	foreach(inst geGetSelSet()
		;CCSPropagateNet( inst~>name "vdd12" "B")	
		CCSPropagateNet( inst~>name "vdd12" "D")
		CCSPropagateNet( inst~>name "vdd12" "G")
		;CCSPropagateNet( inst~>name "vdd12" "S")

	);foreach

);procedure

procedure( jvChangeNetName_fill()

	x=geGetSelSet()

	foreach(decap geGetSelSet()
		CCSPropagateNet( decap~>name "dvss" "VSS")	
		CCSPropagateNet( decap~>name "dvdd" "VDD")

	);foreach

);procedure

procedure( jvChangeNetName_adcCap()

	x=geGetSelSet()

	foreach(decap geGetSelSet()
		CCSPropagateNet( decap~>name "avdd" "avdd")	
		CCSPropagateNet( decap~>name "avdd" "vrp")
		CCSPropagateNet( decap~>name "vrc" "vrc")
		CCSPropagateNet( decap~>name "vrn" "vrn")
		CCSPropagateNet( decap~>name "vrn" "vrnx")
		CCSPropagateNet( decap~>name "vrc" "vrcx")
		CCSPropagateNet( decap~>name "avdd" "vrpx")



	);foreach

);procedure

