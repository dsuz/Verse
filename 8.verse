Main(Args:[]string, Env:[string]string)<suspends>:void =
    Arr := array{7, 2, 9, 4}
    var MaxValue:?int = false
    #for (E : Arr):
    for (E : Arr)
    {
        if (not MaxValue? >= E):
            set MaxValue = option{E}
    }
    if (FinalMax := MaxValue?):
        Print("Max: {FinalMax}")
    