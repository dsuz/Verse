Main(Args:[]string, Env:[string]string)<suspends>:void =
    var Coins:int = 100
    var PotionStock:int = 2
    PotionPrice := 50

    loop:
        Print("Potionを買います")
        if:
            set Coins -= PotionPrice
            set PotionStock += 1
            Coins >= 0
        else:
            Print("買えませんでした")
            break
        Print("Coins: {Coins}, PotionStock: {PotionStock}")
