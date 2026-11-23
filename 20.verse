Main(Args:[]string, Env:[string]string)<suspends>:void =
    Data := array{"apple", "banana", "apple", "cherry", "banana", "apple"}
    # Data := array{"apple", "banana", "", "apple", "cherry", "banana", "apple"}
    var WordCounter:[string]int = map{}

    for (Word : Data, Word.Length > 0): # 空文字だった場合はスキップする
        if (set WordCounter[Word] += 1) {}
        else if (set WordCounter[Word] = 1) {}
        else:
            Print("Unexpected error")

    for (Key -> Count : WordCounter):
        Print("{Key}: {Count}")