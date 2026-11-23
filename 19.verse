counter := class:
    var Count:int = 0

    Increment():void = 
        set Count += 1
    
    Reset():void = 
        set Count = 0

Main(Args:[]string, Env:[string]string)<suspends>:void =
    Counter := counter{}
    Counter.Increment()
    Counter.Increment()
    Counter.Increment()
    Print("{Counter.Count}")
    Counter.Reset()
    Print("{Counter.Count}")
