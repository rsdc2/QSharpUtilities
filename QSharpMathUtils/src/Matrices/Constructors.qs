namespace Matrices.Constructors {
    import Std.Diagnostics.*;
    import Std.Arrays.*;
    import Std.Convert.*;
    import Matrices.Properties.*;
    import Matrices.Identity.*;
    import Matrices.Multiply.*;
    import Categories.Monoid.*;
    
    newtype Matrix = Double[][];

    function MonoidReduceMatrix(n : Int) : (Double[][][] -> Double[][]) {
        let validate : Double[][] -> Double[][] = M -> IsSquareArray(M) and Shape(M) == (n, n) ? M | fail $"Must be square array with height / width of {n}";
        MonoidReduceValidate(IdentityMatrix(n), MatMulD, validate)
    }

    export MonoidReduceMatrix;

}