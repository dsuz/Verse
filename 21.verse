signal := enum {
    Green,
    Yellow,
    Red
}

Meaning(Signal:signal):string =
    case(Signal):
        signal.Green => "進め"
        signal.Yellow => "注意"
        signal.Red => "止まれ"

Main(Args:[]string, Env:[string]string)<suspends>:void =
    Print(Meaning(signal.Red))
    Print(Meaning(signal.Yellow))
    Print(Meaning(signal.Green))
   