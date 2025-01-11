namespace Matrices.Conjugate {
    import Std.Math.Complex;
    import Std.Arrays.*;
    import Std.Core;
    import Complex.*;
    import Vectors.*;
    import Functions.*;

    function ConjugateVector(A : Complex[]) : Complex[] {
        Mapped(Conjugate, A)
    }

    function ConjugateMatrix(A : Complex[][]) : Complex[][] {
        Mapped(ConjugateVector, A)
    }

    function ConjugateTranspose(A : Complex[][]) : Complex[][] {
        Transposed(ConjugateMatrix(A))
    }

    function GetAdjoint(A : Complex[][]) : Complex[][] {
        ConjugateTranspose(A)
    }

    /// Return true if all the values of two complex matrices are equal
    function MatricesEqualC(A : Complex[][], B: Complex[][]) : Bool {
        let equal = Curry2(VectorsEqualC);
        VectorsEqual(equal, A, B)
    }

    function IsHermitian(A : Complex[][]) : Bool {
        MatricesEqualC(A, ConjugateTranspose(A))
    }

    // function IsUnitary(A : Complex[][]) : Bool {

    // }

    export ConjugateVector, 
            ConjugateMatrix, 
            ConjugateTranspose, 
            GetAdjoint, 
            MatricesEqualC, 
            IsHermitian;
}