namespace Utilities.Functions {

    function Curry<'T, 'U, 'V>(f : (('T, 'U) -> 'V)) : ('T -> 'U -> 'V) {
        x -> y -> f(x, y)
    }
}