namespace Matrices.Complex.Comparison {
    import Std.Math.*;
    import Vectors.*;
    import HigherOrderFunctions.*;
    /// Return true if all the values of two complex matrices are equal
    function MatricesEqualC(A : Complex[][], B: Complex[][]) : Bool {
        let equal = Curry2(VectorsEqualC);
        VectorsEqual(equal, A, B)
    }

    export MatricesEqualC;
}