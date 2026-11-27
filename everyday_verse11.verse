monster := class:
    Name:string = ""
    var Health:int = 100
    AttackPower:int = 20

    GetAttackPower():int =
        AttackPower

    TakeDamage(Damage:int)<transacts>:void = 
        set Health -= Damage

(Monster:monster).ToString():string = 
    "{Monster.Name}: HP={Monster.Health}"

boss_monster := class(monster):
    AttackPower<override>:int = 50

    GetAttackPower<override>():int =
        AttackPower + 30

    TakeDamage<override>(Damage:int)<transacts>:void =
        if (Adjusted :=  Floor(Damage / 2)):    # これはちゃんと動きます
            (super:)TakeDamage(Adjusted)        # 親クラスの TakeDamage を再利用する

slime := class(monster):
    AttackPower<override>:int = 5

    GetAttackPower<override>():int =
        AttackPower * 2

Main(Args:[]string, Env:[string]string)<suspends>:void =
    Goblin := monster{Name := "Goblin"}
    Dragon := boss_monster{Name := "Dragon"}    # 問題で指定されていないが、Boss とする
    Slime := slime{Name := "Slime"}
    Print("{Goblin.Name}: ATK={Goblin.GetAttackPower()}")       # 修正
    Print("{Dragon.Name}: ATK={Dragon.GetAttackPower()}")       # 修正
    Print("{Slime.Name}: ATK={Slime.GetAttackPower()}")         # 修正
    Monsters:[]monster := array{Goblin, Dragon, Slime}

    for (Monster : Monsters):
        Print("{Monster.Name}: ATK={Monster.GetAttackPower()}") # 修正

    Print("--- 追加問題 ---")
    
    for (Monster : Monsters):
        Print(Monster.ToString())
        Monster.TakeDamage(50)
        Print(Monster.ToString())