Main(Args:[]string, Env:[string]string)<suspends>:void =
    DamageValues:[]int = array{30, 0, 12, 5}

    for (Index -> DamageValue : DamageValues, DamageValue > 0):
        Print("Index: {Index}, DamageValue: {DamageValue}")

    if (Item := DamageValues[2]):
        Print("{Item}")

    DoubledDamageValues := for (DamageValue : DamageValues) { DamageValue * 2 }

    for (Doubled : DoubledDamageValues):
        Print("{Doubled}")