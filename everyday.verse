IsPositive(Value:int)<decides><transacts>:void = 
    Value > 0

CalculateDamage(AttackPower:int, Defense:int)<transacts>:int =
    AttackPower - Defense

Main(Args:[]string, Env:[string]string)<suspends>:void =
    AttackDefenseValueList := array{(80, 30), (4, 4), (3, 5)}

    for (AttackDefence : AttackDefenseValueList):
        var Damage:int = CalculateDamage(AttackDefence)
        if(not IsPositive[Damage]) { set Damage = 0 }
        Print("ダメージは {Damage}")
