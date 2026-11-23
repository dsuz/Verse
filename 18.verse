point := struct:
    X:int = 0
    Y:int = 0

(Origin:point).ManhattanDistanceTo(Destination:point):int =
    Abs(Destination.X - Origin.X) + Abs(Destination.Y - Origin.Y)

Main(Args:[]string, Env:[string]string)<suspends>:void =
    A := point{X := 1, Y := 2}
    B := point{X := 4, Y := -2}
    Distance := A.ManhattanDistanceTo(B)
    Print("{Distance}")