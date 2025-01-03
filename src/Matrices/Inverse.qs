namespace Utilities.Matrices.Inverse {

    import Std.Diagnostics.*;
    import Std.Arrays.*;
    import Std.Math.*;
    import Utilities.Complex.*;

    /// # Summary
    /// Invert a 2x2 matrix
    function Inverted2x2(A : Complex[][]) : Complex[][] {
        Fact(Length(A) == 2 and Length(ColumnAt(0, A)) == 2, "Must be a 2x2 matrix");
        let a = A[0][0];
        let b = A[0][1];
        let c = A[1][0];
        let d = A[1][1];

        let det = DividedByC(Complex(1., 0.), MinusC(TimesC(a, d), TimesC(b, c)));
        let B = [[d, NegC(b)],
                 [NegC(c), a]]
        
    }
}