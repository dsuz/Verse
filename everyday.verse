Main(Args:[]string, Env:[string]string)<suspends>:void =
    A := 12
    B := 4
    C := 2
    D := A + B * C
    E := (A + B) * C
    Print("D: {D}, E: {E}")
    var Score:int = 10
    set Score += 5
    set Score *= 2
    if (Score >= 30):
        Print("Score({Score}) >= 30")
    if (Score = 30):
        Print("Score({Score}) = 30")
    else:
        Print("Score({Score}) != 30")
