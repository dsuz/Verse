Main(Args:[]string, Env:[string]string)<suspends>:void =
    ValuesList := array{array{1, 3, 8, 5, 10}, array{1, 3, 5}}

    for (Values : ValuesList):
        if (Even := FindFirst[Values, IsEven]):
            Print("{Even}")
        else:
            Print("条件を満たす要素は見つかりません")


IsEven(X:int)<computes><decides>:void =
    Mod[X, 2] = 0

FindFirst(Values:[]int, Pred:type{_(:int)<computes><decides>:void})<decides><transacts>:int =
    Matches := for (V : Values, Pred[V]) { V }[0]
