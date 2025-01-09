namespace Utilities.Matrices.Multiply {
    import Std.Arrays.Transposed;
    import Std.Arrays.*;
    import Std.Math.*;
    import Std.Diagnostics.*;
    import Utilities.Vectors.*;
    import Utilities.Complex.*;
    import Utilities.Matrices.Properties.*;

    /// Multiply a matrix by a scalar complex
    function ScalarMulMatC(x : Complex, A : Complex[][]) : Complex[][] {
        Mapped(V -> ScalarMulVecC(x, V), A)
    }

    function MatMulT<'T>(A : 'T[][], B : 'T[][], empty : 'T, mul : ('T, 'T) -> 'T, add : ('T, 'T) -> 'T) : 'T[][] {
        Fact(ColCount(A) == RowCount(B), "Number of columns of matrix A must be equal to number of rows in matrix B");
        Transposed(Mapped(DotProdVecMatT(A, _, empty, mul, add), Columns(B)))
    }

    function DotProdMat(A : Double[][], B : Double[][]) : Double[][] {
        MatMulT(A, B, 0., (x, y) -> x * y, (x, y) -> x + y)
    }

    function MatMul(A : Double[][], B : Double[][]) : Double[][] {
        DotProdMat(A, B)
    }

    function DotProdMatC(A : Complex[][], B : Complex[][]) : Complex[][] {
        MatMulT(A, B, ToC(0.), (x, y) -> TimesC(x, y), (x, y) -> PlusC(x, y))
    }
}