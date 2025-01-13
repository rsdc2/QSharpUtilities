namespace Matrices.Inverse {

    import Std.Diagnostics.*;
    import Std.Arrays.*;
    import Std.Math.*;
    import Complex.*;
    import Matrices.Properties.*;
    import Matrices.Multiply.*;

    /// Return the determinant of a 2x2 matrix of type Double
    function Determinant2x2D(A : Double[][]) : Double {
        Fact(Shape(A) == (2, 2), "Must be a 2x2 matrix");
        A[0][0] * A[1][1] - A[0][1] * A[1][0]
    }

    function Determinant2x2C(A : Complex[][]) : Complex {
        Fact(Shape(A) == (2, 2), "Must be a 2x2 matrix");
        MinusC(TimesC(A[0][0], A[1][1]), TimesC(A[0][1], A[1][0]))
    }

    /// # Summary
    /// Invert a 2x2 matrix
    function Inverted2x2(A : Complex[][]) : Complex[][] {
        Fact(Length(A) == 2 and Length(ColumnAt(0, A)) == 2, "Must be a 2x2 matrix");
        let a = A[0][0];
        let b = A[0][1];
        let c = A[1][0];
        let d = A[1][1];

        let detdiv = DividedByC(ToC(1.), Determinant2x2C(A));
        let B = [[d, NegC(b)],
                 [NegC(c), a]];
        MatMulScalarC(detdiv, B)
    }

    export Determinant2x2C, Determinant2x2D, Inverted2x2;
}