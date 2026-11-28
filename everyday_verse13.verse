using { /Verse.org/Simulation }

WaitAndPrint(Second:float, Message:string)<suspends>:void = 
    Print("{Second} sec task started")
    Sleep(Second)
    Print(Message)

TaskA()<suspends>:void =
    Print("A started")
    Sleep(2.0)
    Print("A finished")

TaskB()<suspends>:void =
    Print("B started")
    Sleep(5.0)
    Print("B finished")

GetScore(Second:float, Score:int)<suspends>:int =
    Sleep(Second)
    Score

Main(Args:[]string, Env:[string]string)<suspends>:void =
    Print("Start sync")

    sync:
        WaitAndPrint(2.0, "2 sec passed")
        WaitAndPrint(5.0, "5 sec passed")
        WaitAndPrint(3.0, "3 sec passed")
    
    Print("All tasks finished")

    # 応用問題
    Print("Start intermediate")
    spawn{WaitAndPrint(5.0, "5 sec passed (int)")}
    Print("Main continues (int)")
    Sleep(2.0)
    Print("Main finished (int)")

    # 発展問題
    Print("Start advanced")
    race:
        WaitAndPrint(3.0, "3 sec passed (adv)")

        sync:
            WaitAndPrint(2.0, "2 sec passed (adv)")
            WaitAndPrint(4.0, "4 sec passed (adv)")
            

