namespace Matrices.Constructors {
    import Std.Diagnostics.*;
    import Std.Arrays.*;
    import Std.Convert.*;
    import Std.Math.*;

    import Matrices.Properties.*;
    import Matrices.Identity.*;
    import Matrices.Multiply.*;
    import Categories.Monoid.*;

    function MonoidReduceMatrixD(n : Int) : (Double[][][] -> Double[][]) {
        let mul : Int -> Int -> Int = x -> y -> x * y; 
        let validate : Double[][] -> Double[][] = M -> Shape(M) == (n, n) ? M | fail $"Must be square array with height / width of {n}";
        MonoidReduceValidate(IdentityMatrix(n), MatMulD, validate)
    }

    export MonoidReduceMatrixD;

}