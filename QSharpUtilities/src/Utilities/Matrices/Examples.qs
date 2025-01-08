namespace Utilities.Matrices.Examples {
    import Std.Math.*;
    import Utilities.Matrices.ToCMat;
    import Utilities.Complex.*;

    function Ex2x2() : Complex[][] {
        let mat = [[3., 1.],
                    [2., 2.]];
        ToCMat(mat)
    }

}