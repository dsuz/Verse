Main(Args:[]string, Env:[string]string)<suspends>:void =
    var Result:string = ""
    for (Index -> Fruits : array{"apple", "banana", "cherry"}):
        if (Index > 0):
            set Result += ", "
        set Result += Fruits
    Print(Result)
