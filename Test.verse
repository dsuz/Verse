Main(Args:[]string, Env:[string]string)<suspends>:void =
    # Print(Greet())
    # Greet()
    a: int = 100;
    Message : string = "How are you"
    # Message
    Print(if (IsPrime(11) = true) then "y" else "n")

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
        for (i : int = 3; i < N; i = i + 1):
            if (Mod[N, i] = 0):
                return false
    true

# メソッドを定義する
Greet() : string =
    Message : string = "Hello" # 変数の宣言と初期化 / 定数
    # Message = "x" # これはできない
    # var Text : string = "Hi"
    # set Text = "Hi, there"  # 変数に値を代入する方法
    Dummy : string = "Dummy"
    Message
    # 戻り値はどう定義するのか？ 