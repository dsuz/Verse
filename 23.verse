MinMax(Nums:[]int)<decides><transacts>:tuple(int, int) =
    var MaxValue:?int = false
    var MinValue:?int = false

    for (N : Nums):
        if (not MaxValue? >= N):
            set MaxValue = option{N}
        if (not MinValue? <= N):
            set MinValue = option{N}

    (MinValue?, MaxValue?)

Main(Args:[]string, Env:[string]string)<suspends>:void =
    Data := array{array{7, 2, 9, 4}, array{}}

    for (Nums: Data):
        if (Answer := MinMax[Nums]):
            Print("最小: {Answer(0)}, 最大: {Answer(1)}")
        else:
            Print("空です")