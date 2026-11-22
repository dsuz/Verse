MyClamp(X:int, Low:int, High:int):int =
    if (X < Low). Low
    else if (X > High). High
    else. X

Main(Args:[]string, Env:[string]string)<suspends>:void =
    Cases := array{(-5, 0, 10), (5, 0, 10), (15, 0, 10)}
    for (Case : Cases):
        Clamped := MyClamp(Case)
        Print("Clamp {Case(0)} between {Case(1)} and {Case(2)} -> {Clamped}")
