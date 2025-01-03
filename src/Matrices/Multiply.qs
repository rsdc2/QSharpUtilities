namespace Utilities.Matrices.Multiply {
    import Std.Arrays.Mapped;
    import Std.Math.*;
    import Utilities.Vectors.*;
    import Utilities.Complex.*;

    function ScalarMul2x2(x : Double, A : Complex[][]) : Complex[][] {
        Mapped(V -> MulC(x, V), A)
    }
}