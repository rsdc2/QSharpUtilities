namespace Matrices.Complex.AdjointM {
    import Std.Math.*;
    import Matrices.Complex.Conjugate.*;
    import Matrices.Complex.Comparison.*;

    function GetAdjoint(A : Complex[][]) : Complex[][] {
        ConjugateTranspose(A)
    }

    function IsHermitian(A : Complex[][]) : Bool {
        MatricesEqualC(A, ConjugateTranspose(A))
    }

    // function IsUnitary(A : Complex[][]) : Bool {

    // }
    
    export GetAdjoint, 
            MatricesEqualC, 
            IsHermitian;
}