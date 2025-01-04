namespace Utilities.Matrices {
    import Std.Math.*;
    import Std.Arrays.*;

    import Utilities.Vectors.*;

    import Utilities.Matrices.Conjugate.*;
    import Utilities.Matrices.Examples.*;
    import Utilities.Matrices.Identity.*;
    import Utilities.Matrices.Inverse.*;
    import Utilities.Matrices.Multiply.*;
    
    function ToCMat(A : Double[][]) : Complex[][] {
        Mapped(ToCVec, A)
    }   
}