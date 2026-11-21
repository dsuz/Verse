Main(Args:[]string, Env:[string]string)<suspends>:void =
    PlayerName := "Loto"
    Level := 10
    MoveSpeed := 5.5
    IsAlive:logic = true;
    Total:float = Level * MoveSpeed
    Print("PlayerName: {PlayerName}")
    Print("Level: {Level}")
    Print("MoveSpeed: {MoveSpeed}")
    Print("IsAlive: {if (IsAlive?) then "true" else "false"}")
    Print("Total: {Total}")