namespace Matrices.Complex.Multiply {
    import Std.Math.*;
    import Std.Arrays.*;
    import Vectors.*;
    import Matrices.Multiply.*;
    import Matrices.Complex.Types.*;
    import Complex.*;

    /// Multiply a complex matrix by a scalar complex
    function MatMulCScalarC(x : Complex, A : Complex[][]) : Complex[][] {
        Mapped(V -> VecMulScalarC(x, V), A)
    }

    /// Multiply a complex matrix by a scalar double
    function MatMulCScalarD(x : Double, A : Complex[][]) : Complex[][] {
        Mapped(V -> VecMulScalarC(ToC(x), V), A)
    }

    /// Return the dot product of two complex matrices
    function MatMulC(A : Complex[][], B : Complex[][]) : Complex[][] {
        MatMulT(A, B, ToC(0.), TimesC, PlusC)
    }

    function MatMulMatrixC(A : MatrixC, B : MatrixC) : MatrixC {
        let scalar = TimesC(A.scalar, B.scalar);
        let matrix = MatMulC(A.matrix, B.matrix);
        ToMatrixC(scalar, matrix)
    }

    export MatMulCScalarC, MatMulC;
}