Greet(Name:string):string =
    "こんにちは" + Name + "さん"

Main(Args:[]string, Env:[string]string)<suspends>:void =
    for (Name : array{"Alice", "Bob", "Carol"}):
        Print(Greet(Name))
