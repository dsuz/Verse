Main(Args:[]string, Env:[string]string)<suspends>:void =
    Prices:[string]int = map{"apple" => 120, "banana" => 0 }

    for (Name: array{"apple", "banana", "cherry"}):
        if (Price := GetPrice[Prices, Name]):
            Print("{Name} は {Price} 円です。")
        else:
            Print("取得できません")

GetPrice(Prices:[string]int, Name:string)<decides><transacts>:int = 
    Prices[Name] > 0 
