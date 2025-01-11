namespace Categories.Monoid {
    import Std.Arrays.*;

    function MonoidOp<'T>(op : ('T, 'T) -> 'T) : ('T -> 'T -> 'T) {
        x -> y -> op(x, y)
    }

    function MonoidReduce<'T>(empty : 'T, op : ('T, 'T) -> 'T) : ('T[] -> 'T) {
        xs -> Fold(op, empty, xs)
    }

    function MonoidReduceValidate<'T>(empty : 'T, op : ('T, 'T) -> 'T, validate : 'T -> 'T): ('T[] -> 'T) {
        xs -> Fold(op, empty, Mapped(validate, xs))
    }

    export MonoidOp, MonoidReduce, MonoidReduceValidate;
}