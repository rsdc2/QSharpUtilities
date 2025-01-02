namespace Utilities.Vector {
    import Std.Math.*;
    import Std.Arrays.*;
    import Utilities.Complex.*;
    import Utilities.Functions.*;

    function MappedPartial<'T, 'U, 'V>(A : 'T[], f : 'T -> 'U -> 'V) : ('U -> 'V)[] {
        Mapped(f, A)
    }

    function AreEqualVectorsC(A : Complex[], B: Complex[]) : Bool {
        let partiallyApplied = Mapped(Curry(EqualC), A);
        let applied = Zipped(partiallyApplied, B);
        All((f, x) -> f(x), applied)
    } 

}