RegisterItem(Key:string, Price:int, Data:[string]int)<decides><transacts>:[string]int =
    var NewData:[string]int = Data
    set NewData[Key] = Price
    NewData

Main(Args:[]string, Env:[string]string)<suspends>:void =
    var Data:[string]int = map{}    
    if (set Data["Potion"] = 50) {}
    if (set Data["Sword"] = 200) {}
    if (set Data["Shield"] = 150) {}
    if (set Data["Potion"] = 60) {}

    if (Price := Data["Potion"]):
        Print("{Price}")

    if (Price := Data["Bow"]):
        Print("{Price}")
    else:
        Print("Not Found")

    Print("--- 追加問題 ---")

    if (NewData := RegisterItem["Armor", 190, Data]):
        set Data = NewData
    else:
        Print("failed")
    
    if (NewData := RegisterItem["Armor", 210, Data]):
        set Data = NewData
    else:
        Print("failed")

    if (NewData := RegisterItem["Bracer", 75, Data]):
        set Data = NewData
    else:
        Print("failed")

    for (Name -> Price : Data):
        Print("{Name}: {Price}")
