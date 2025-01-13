namespace Matrices.Constructors {
    import Std.Diagnostics.*;
    import Std.Arrays.*;
    import Std.Convert.*;
    import Std.Math.*;

    import Matrices.Properties.*;
    import Matrices.Identity.*;
    import Matrices.Multiply.*;
    import Categories.Monoid.*;

    // Reduce function for a square matrix under multiplication
    function MonoidReduceMatMulD(n : Int, xs : Double[][][]) : Double[][] {
        let mul : Int -> Int -> Int = x -> y -> x * y; 
        let validate : Double[][] -> Double[][] = 
            M -> Shape(M) == (n, n) ? M | 
            fail $"Must be square array with height / width of {n} to create the 
            monoid of {n}x{n} matrices under multiplication";
        MonoidReduceValidate(IdentityMatrix(n), MatMulD, validate, xs)
    }

    export MonoidReduceMatMulD;

}