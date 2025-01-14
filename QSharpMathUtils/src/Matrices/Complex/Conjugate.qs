namespace Matrices.Complex.Conjugate {
    import Std.Math.Complex;
    import Std.Arrays.*;
    import Std.Core;
    import Complex.*;
    import Vectors.*;
    import HigherOrderFunctions.*;

    function ConjugateMatrix(A : Complex[][]) : Complex[][] {
        Mapped(ConjugateVector, A)
    }

    function ConjugateTranspose(A : Complex[][]) : Complex[][] {
        Transposed(ConjugateMatrix(A))
    }

    export  ConjugateMatrix, 
            ConjugateTranspose;
}