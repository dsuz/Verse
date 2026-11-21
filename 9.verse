Main(Args:[]string, Env:[string]string)<suspends>:void =
    Arr := array{7, 2, 9, 4}
    #Doubled := for (X : Arr) { X * 2 }
    #Doubled := for (X : Arr). X * 2
    Doubled := for (X : Arr):
        X * 2
    for (E : Doubled):
        Print("{E}")