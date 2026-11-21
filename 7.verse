Main(Args:[]string, Env:[string]string)<suspends>:void =
    Arr := array{3, 1, 4, 1, 5}
    for (I -> E : Arr):
        Print("{I}: {E}")