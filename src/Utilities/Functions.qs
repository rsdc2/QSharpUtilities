namespace Utilities.Functions {

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
}