namespace Categories.Group {
    import Std.Arrays.*;

    // Return an instance of the group type class as a tuple 
    // comprising the monoid operation and the empty
    // value
    function Group<'T>(op: ('T, 'T) -> 'T, empty: 'T, inverse: 'T -> 'T) : (('T, 'T) -> 'T, 'T, 'T -> 'T) {
        return (op, empty, inverse)
    }

}