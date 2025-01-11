namespace Matrices.Examples {
    import Std.Math.*;
    import Matrices.ToCMat;
    import Complex.*;

    function Ex2x2() : Complex[][] {
        let mat = [[3., 1.],
                    [2., 2.]];
        ToCMat(mat)
    }

    export Ex2x2;

}