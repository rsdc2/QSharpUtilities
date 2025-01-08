namespace Utilities.Matrices.Multiply {
    import Std.Arrays.Transposed;
    import Std.Arrays.Mapped;
    import Std.Math.*;
    import Std.Diagnostics.*;
    import Utilities.Vectors.*;
    import Utilities.Complex.*;

    /// Multiply a matrix by a scalar complex
    function ScalarMulMatC(x : Complex, A : Complex[][]) : Complex[][] {
        Mapped(V -> ScalarMulVecC(x, V), A)
    }



    // function DotProdMat(A : Double[][], B : Double[][]) : Double[][] {

    // }

    function DotProdMatC(A : Complex[][], B : Complex[][]) : Complex[][] {
        // Fact(Length(A) == Length(B), "Matrices must be of equal ");
        Transposed(Mapped(DotProdVecMatC(A, _), Transposed(B)))
    }
}