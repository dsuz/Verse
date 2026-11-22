Main(Args:[]string, Env:[string]string)<suspends>:void =
    Text:string = "Hello World"
    var Count:int = 0
    for (C : Text, C = 'l'). set Count += 1
    Print("{Count}")
