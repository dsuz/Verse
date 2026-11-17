Main(Args:[]string, Env:[string]string)<suspends>:void =
    # Print(Greet())
    # Greet()
    a: int = 100
    b := 200    # 定数の場合は型推論もできる/変数の場合は型推論できない
    Print("{b}")
    Message := "How are you"
    # Message
    var flg : logic = IsPrime(4)
    Print(if (flg = true) then "y" else "n")
    # set flg = IsPrime(7)
    # Print(if (flg = true) then "y" else "n")
    # set flg = IsPrime(121)
    # Print(if (flg = true) then "y" else "n")
    # set flg = IsPrime(133)
    # Print(if (flg = true) then "y" else "n")
    # Print(if (flg = true) then "y" else "n")

Fibo(N: int) : int = 
    if (N = 0):
        return 0
    else if (N = 1):
        return 1
    
    Fibo(N - 1) + Fibo(N - 2)

IsPrime(N : int) : logic = 
    if (N < 1):
        return false
    else if (N = 2):
        return true
    else:
        for (i := 2..N - 1):
            if (Mod[N, i] = 0):
                return false
        true

# メソッドを定義する
Greet() : string =
    Message : string = "Hello" # 変数の宣言と初期化 / 定数
    # Message = "x" # これはできない
    # var Text : string = "Hi"
    # set Text = "Hi, there"  # 変数に値を代入する方法
    Dummy := "Dummy"
    Message
    # Q:戻り値はどう定義するのか？ A:最後の式が暗黙的に戻り値になる。関数の途中で戻り値を返して処理を抜けたい場合は明示的に return 文を書く。