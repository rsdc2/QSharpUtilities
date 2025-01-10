namespace Utilities.Matrices.Constructors {
    import Std.Diagnostics.*;
    import Std.Arrays.*;
    import Std.Convert.*;
    import Utilities.Matrices.Properties.*;
    import Utilities.Matrices.Identity.IdentityMatrix;
    import Utilities.Categories.Monoid.*;
    import Utilities.Matrices.Multiply.*;

    newtype Matrix = Double[][];

    function MonoidReduceMatrix(n : Int) : (Double[][][] -> Double[][]) {
        let validate : Double[][] -> Double[][] = M -> IsSquareArray(M) and Shape(M) == (n, n) ? M | fail $"Must be square array with height / width of {n}";
        MonoidReduceValidate(IdentityMatrix(n), MatMul, validate)
    }

}