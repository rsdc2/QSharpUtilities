namespace Utilities.Matrices.Conjugate {
    import Std.Math.Complex;
    import Std.Arrays.*;
    import Utilities.Complex.*;
    import Utilities.Vectors.*;
    import Utilities.Functions.*;

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

    function EqualMatricesC(A : Complex[][], B: Complex[][]) : Bool {
        let equal = Curry2(EqualVectorsC);
        EqualV(equal, A, B)
    }

    function IsHermitian(A : Complex[][]) : Bool {
        EqualMatricesC(A, ConjugateTranspose(A))
    }

    // function IsUnitary(A : Complex[][]) : Bool {

    // }
}