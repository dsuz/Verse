monster := class<abstract>:
    Name:string = ""
    var Health:int = 100

    GetAttackPower():int

goblin := class<final>(monster):
    GetAttackPower<override>():int = 20

boss_monster := class<final>(monster):
    GetAttackPower<override>():int = 80

# 追加問題2
#archgoblin := class(goblin):
#    GetAttackPower<override>():int = 40
# これはエラー V3569 になる
# V3569: Class `archgoblin` cannot be a subclass of the class `goblin` which has the `final` attribute.

DescribeMonster(M:monster)<suspends>:void =
    Print("{M.Name}: HP={M.Health}, ATK={M.GetAttackPower()}")

Main(Args:[]string, Env:[string]string)<suspends>:void =
    Goblin := goblin{Name := "Goblin"}
    Boss := boss_monster{Name := "Boss"}

    DescribeMonster(Goblin)
    DescribeMonster(Boss)

    # 追加問題1
    # Monster:monster = monster{} # これはエラー V3571 になる
    # V3571: Cannot instantiate class `monster` because it has the `abstract` attribute.
    # Use a subclass of it.
