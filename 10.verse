Main(Args:[]string, Env:[string]string)<suspends>:void =
    Arr := array{3, 1, 4, 1, 5}
    for (I : array{2, 10}):
        if (X := Arr[I]). Print("{X}")
        else. Print("範囲外です")
