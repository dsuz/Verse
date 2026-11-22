Main(Args:[]string, Env:[string]string)<suspends>:void =
    Arr := array{1, 2, 3, 4, 5}
    Reverse := for (I := 0..Arr.Length - 1, E := Arr[Arr.Length - I - 1]). E
    for (E : Reverse). Print("{E}")