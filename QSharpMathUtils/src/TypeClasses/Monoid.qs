namespace Categories.Monoid {
    import Std.Arrays.*;

    // Return an instance of the monoid type class as a tuple 
    // comprising the monoid operation and the empty
    // value
    function Monoid<'T>(op: ('T, 'T) -> 'T, empty: 'T) : (('T, 'T) -> 'T, 'T) {
        return (op, empty)
    }

    // Return the monoid operation from a monoid
    function MonoidOp<'T>(monoid : (('T, 'T) -> 'T, 'T)) : (('T, 'T) -> 'T) {
        let (op, _) = monoid;
        op
    }

    // Return the empty value of the monoid
    function MonoidEmpty<'T>(monoid : (('T, 'T) -> 'T, 'T)) : 'T {
        let (_, empty) = monoid;
        empty
    }

    function MonoidReduce<'T>(monoid : (('T, 'T) -> 'T, 'T), xs : 'T[]) : 'T {
        let (op, empty) = monoid;
        Fold(op, empty, xs)
    }

    function MonoidReduceValidate<'T>(empty : 'T, op : ('T, 'T) -> 'T, validate : 'T -> 'T, xs : 'T[]): 'T {
        Fold(op, empty, Mapped(validate, xs))
    }

    export Monoid, MonoidEmpty, MonoidOp, MonoidReduce, MonoidReduceValidate;
}