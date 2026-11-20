Main(Args:[]string, Env:[string]string)<suspends>:void =
    Print("{SumTo(10)}")
    Print("{SumOfSquares(10)}")

SumTo(N : int) : int =
    var Sum : int = 0
    for (I := 1..N):
        set Sum += I
    Sum

SumOfSquares(N : int) : int = 
    var Sum : int = 0
    for (I := 1..N):
        set Sum += I * I
    Sum