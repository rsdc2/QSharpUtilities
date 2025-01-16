namespace Matrices.Complex.Conjugate {
    import Std.Math.Complex;
    import Std.Arrays.*;
    import Std.Core;
    import Complex.*;
    import Vectors.*;
    import HigherOrderFunctions.*;

    /// Find the conjugate of all the values in a complex valued matrix
    /// And return as a complex valued matrix
    function ConjugateMatrix(A : Complex[][]) : Complex[][] {
        Mapped(ConjugateVector, A)
    }
    
    // function ConjugateMatrixC

    function ConjugateTranspose(A : Complex[][]) : Complex[][] {
        Transposed(ConjugateMatrix(A))
    }

    export  ConjugateMatrix, 
            ConjugateTranspose;
}