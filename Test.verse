Main(Args:[]string, Env:[string]string)<suspends>:void =
    var Values: []int = array{ 0, 1, 100, 250 }
    if (Fourth := Values[3], Fourth > 10):
        Print("4番目は {Fourth}")
    else:
        Print("配列の要素が3以下、または4番目が10以下")




    # Print(Greet())
    # Greet()
    a: int = 100
    b := 200    # 定数の場合は型推論もできる/変数の場合は型推論できない
    Print("{b}")
    Message := "How are you"
    for (n := 2..7):
        Print(if (IsPrime[n]) then "{n} is Prime" else "{n} is Composite")
    Squares := for(I := 1..5) { I * I }
    for (I -> N : Squares):
        Print("{I} : {N}");
    Print("End")

Fibo(N: int) : int = 
    if (N = 0):
        return 0
    else if (N = 1):
        return 1
    
    Fibo(N - 1) + Fibo(N - 2)

IsPrime(N : int)<computes><decides> : void = 
    if (N < 1):
        false?
    else if (N = 2):
        
    else:
        for (i := 2..N - 1):
            if (Mod[N, i] = 0):
                false?

# メソッドを定義する
Greet() : string =
    Message : string = "Hello" # 変数の宣言と初期化 / 定数
    # Message = "x" # これはできない
    # var Text : string = "Hi"
    # set Text = "Hi, there"  # 変数に値を代入する方法
    Dummy := "Dummy"
    Message
    # Q:戻り値はどう定義するのか？ A:最後の式が暗黙的に戻り値になる。関数の途中で戻り値を返して処理を抜けたい場合は明示的に return 文を書く。