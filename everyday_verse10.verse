monster := class:
    Name:string = ""
    var Health:int = 100
    AttackPower:int = 20

    TakeDamage(Damage:int)<transacts>:void = 
        set Health -= Damage

    Attack(Target:monster):void = 
        Target.TakeDamage(Self.AttackPower)

(Monster:monster).ToString():string = 
    "{Monster.Name}: HP={Monster.Health}"

Main(Args:[]string, Env:[string]string)<suspends>:void =
    Goblin := monster{Name := "Goblin"}
    Dragon := monster{Name := "Dragon", Health := 300, AttackPower := 50}
    Goblin.TakeDamage(30)
    Dragon.TakeDamage(80)
    Print(Goblin.ToString())
    Print(Dragon.ToString())
    Print("--- 追加問題 ---")
    Goblin.Attack(Dragon)
    Print(Goblin.ToString())
    Print(Dragon.ToString())
