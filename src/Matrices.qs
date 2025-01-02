namespace Utilities.Matrices {
    import Std.Convert.DoubleAsStringWithPrecision;
    import Std.Math.Complex;
    import Std.Arrays.*;
    import Utilities.Complex.*;

    function ConjugateVector(A : Complex[]) : Complex[] {
        Mapped(Conjugate, A)
    }

    function ConjugateMatrix(A : Complex[][]) : Complex[][] {
        Mapped(ConjugateVector, A)
    }

    function ConjugateTranspose(A : Complex[][]) : Complex[][] {
        Transposed(ConjugateMatrix(A))
    }

    function ComplexEqual(A : Complex[][]) : Bool {
        
    } 

    function IsHermitian(A : Complex[][]) : Bool {
        ConjugateTranspose(A)
    }
}