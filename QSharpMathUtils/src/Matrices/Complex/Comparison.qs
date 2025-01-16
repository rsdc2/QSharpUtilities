namespace Matrices.Complex.Comparison {
    import Std.Math.*;
    import Vectors.*;
    import HigherOrderFunctions.*;
    
    /// Return true if all the values of two complex matrices are equal
    function MatricesEqualC(A : Complex[][], B: Complex[][]) : Bool {
        let equal = Curry2(VectorsEqualC);
        VectorsEqualT(equal, A, B)
    }

    /// Return true if all the values of two complex matrices are equal
    /// to n decimal places
    function MatricesApproxEqualC(A : Complex[][], B : Complex[][], n : Int) : Bool {
        let equal = Curry2(VectorsApproxEqualC(_, _, n));
        VectorsEqualT(equal, A, B)
    }

    export MatricesEqualC, MatricesApproxEqualC;
}