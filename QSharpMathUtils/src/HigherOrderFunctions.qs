namespace HigherOrderFunctions {

    function Composed2<'T, 'U, 'V>(f1 : 'U -> 'V, f2 : 'T -> 'U) : ('T -> 'V) {
        x -> f1(f2(x))
    } 

    function Composed3<'T, 'U, 'V, 'W>(f1 : 'V -> 'W, f2 : 'U -> 'V, f3 : 'T -> 'U) : ('T -> 'W) {
        x -> f1(f2(f3(x)))
    }

    function Curry2<'T, 'U, 'V>(f : ('T, 'U) -> 'V) : ('T -> 'U -> 'V) {
        x -> y -> f(x, y)
    }

    function Curry3<'T, 'U, 'V, 'W>(f : ('T, 'U, 'V) -> 'W) : ('T -> 'U -> 'V -> 'W) {
        x -> y -> z -> f(x, y, z)
    }

    function Flip2<'T, 'U, 'V>(f : ('T, 'U) -> 'V) : ('U, 'T) -> 'V {
        (y, x) -> f(x, y)
    }

    function Flip2_<'T, 'U, 'V>(f : 'T -> 'U -> 'V) : 'U -> 'T -> 'V {
        y -> x -> f(x)(y)
    }

    export Composed2, Composed3, Curry2, Curry3, Flip2, Flip2_;
    
}