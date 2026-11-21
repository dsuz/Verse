account := class:
    var Balance:int

    Transfer(To:account, Amount:int)<decides><transacts>:void =
        set Self.Balance -= Amount
        set To.Balance += Amount
        Self.Balance >= 0    


Main(Args:[]string, Env:[string]string)<suspends>:void =
    A:account = account{ Balance := 1000 }
    B:account = account{ Balance := 0 }

    for (Amount : array{300, 1000}):
        Print("【送金前】Aの残高: {A.Balance}, Bの残高: {B.Balance}")
        Print("{Amount}を送金します")

        if (A.Transfer[B, Amount]):
            Print("送金に成功しました")
        else: 
            Print("送金に失敗しました")

        Print("【送金後】Aの残高: {A.Balance}, Bの残高: {B.Balance}")
