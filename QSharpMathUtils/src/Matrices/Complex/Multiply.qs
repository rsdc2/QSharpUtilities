namespace Matrices.Complex.Multiply {
    import Std.Math.*;
    import Std.Arrays.*;
    import Vectors.*;
    import Matrices.Multiply.*;
    import Complex.*;

    /// Multiply a matrix by a scalar complex
    function MatMulScalarC(x : Complex, A : Complex[][]) : Complex[][] {
        Mapped(V -> VecMulScalarC(x, V), A)
    }

    function MatMulC(A : Complex[][], B : Complex[][]) : Complex[][] {
        MatMulT(A, B, ToC(0.), TimesC, PlusC)
    }

    export MatMulScalarC, MatMulC;
}