namespace Utilities.Vectors {
    import Std.Math.*;
    import Std.Arrays.*;
    import Utilities.Complex.*;
    import Utilities.Functions.*;

    function MulC(x : Double, A : Complex[]) : Complex[] {
        Mapped(y -> Complex(y.Real * x, y.Imag * x), A)
    }

    function MappedPartial<'T, 'U, 'V>(A : 'T[], f : 'T -> 'U -> 'V) : ('U -> 'V)[] {
        Mapped(f, A)
    }

    function EqualV<'T>(pred : 'T -> 'T -> Bool, A : 'T[], B : 'T[]) : Bool {
        let partiallyApplied = Mapped(pred, A);
        let applied = Zipped(partiallyApplied, B);
        All((f, x) -> f(x), applied)
    }

    function EqualVectorsC(A : Complex[], B: Complex[]) : Bool {
        let equal = Curry2(EqualC);
        EqualV(equal, A, B)
    } 
}