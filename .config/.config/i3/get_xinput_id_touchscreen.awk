BEGIN {

}

{

    champs = $4;
    id = $5

    ######## VOTRE CODE ICI ########

    #print(champs);
    if(champs == "Touchscreen") {
	split(id, a, "=")
	print(a[2]);
    }

    ###############################
}


END {

}
