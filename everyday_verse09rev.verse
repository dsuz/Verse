database := class:
    var Table:[string]int = map{}   # 価格とアイテム名のmap

    RegisterItem(Key:string, Price:int)<decides><transacts>:void =
        set Table[Key] = Price

    GetPrice(Key:string)<decides><transacts>:int = 
        Table[Key]

    GetDescription(Key:string):string = 
        var Description:string = ""
        if (Price := Table[Key]):
            set Description = "{Key}: {Price}"
        Description

    GetAllDescriptions():string =
        var Description:string = ""
        for (Key -> Price : Table):
            set Description += "{Key}: {Price}\n"
        Description

Main(Args:[]string, Env:[string]string)<suspends>:void =
    var Db:database = database{}
    if (Db.RegisterItem["Potion", 50]) {}
    if (Db.RegisterItem["Sword", 200]) {}
    if (Db.RegisterItem["Shield", 150]) {}
    if (Db.RegisterItem["Potion", 60]) {}
    if (Db.RegisterItem["Armor", 190]) {}
    if (Db.RegisterItem["Bracer", 75]) {}
    Print(Db.GetAllDescriptions())
    Print(Db.GetDescription("Armor"))
    Print(Db.GetDescription("Shoes"))
    
    var Name:string = "Potion"
    if (Price := Db.GetPrice[Name]):
        Print("{Name}: {Price}")
    else:
        Print("{Name} not found")

    set Name = "Shoes"
    if (Price := Db.GetPrice[Name]):
        Print("{Name}: {Price}")
    else:
        Print("{Name} not found")
