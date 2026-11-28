shape := class<abstract>:
    Area():int =
        0   # abstract にしたので実装なしでもいいのだが、問題で指定されているので0を返す

rectangle := class<final>(shape):
    Width:int = 0
    Height:int = 0

    Area<override>():int =
        Width * Height

square := class<final>(shape):
    Edge:int = 0

    Area<override>():int =
        Edge * Edge

Main(Args:[]string, Env:[string]string)<suspends>:void =
    Rect:rectangle = rectangle{Width := 3, Height := 4}
    Square:square = square{Edge := 2}
    Shapes:[]shape = array{Rect, Square}

    for (Shape : Shapes):
        Print("{Shape.Area()}")
    