namespace Matrices.Conjugate {
    import Std.Math.Complex;
    import Std.Arrays.*;
    import Std.Core;
    import Complex.*;
    import Vectors.*;
    import Functions.*;

    newtype cls = (
        x : Int,
        y : Int
    );

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
        let equal = Curry2(EqualVectorsC);
        EqualV(equal, A, B)
    }

    function IsHermitian(A : Complex[][]) : Bool {
        MatricesEqualC(A, ConjugateTranspose(A))
    }

    // function IsUnitary(A : Complex[][]) : Bool {

    // }
}