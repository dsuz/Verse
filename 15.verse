Main(Args:[]string, Env:[string]string)<suspends>:void =
    Scores := map{"Alice" => 80, "Bob" => 65, "Carol" => 92}
    for (K -> V : Scores). Print("{K}: {V}")
    Btm := 70
    Cnt := (for(K -> V : Scores, V >= Btm) {}).Length
    Print("{Btm}点以上は{Cnt}人です。")
     