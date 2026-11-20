Main(Args:[]string, Env:[string]string)<suspends>:void =
    for (I := 1..9):
        var Line:string = ""
        for (J := 1..9):
            if (J = 9):
                set Line += "{I * J}"
            else:
                set Line += "{I * J} "
        Print("{Line}")
