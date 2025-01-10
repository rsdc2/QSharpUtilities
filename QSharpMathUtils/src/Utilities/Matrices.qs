namespace Utilities.Matrices {
    import Std.Math.*;
    import Std.Arrays.*;

    import Utilities.Vectors.*;

    import Utilities.Matrices.Conjugate.*;
    import Utilities.Matrices.Identity.*;
    import Utilities.Matrices.Inverse.*;
    import Utilities.Matrices.Multiply.*;
    
    function ToCMat(A : Double[][]) : Complex[][] {
        Mapped(ToCVec, A)
    }   

    /// Convert a complex matrix into a real matrix
    /// by taking only the real components of all
    /// the complex numbers
    function RealMat(A : Complex[][]) : Double[][] {
        Mapped(RealVec, A)
    }

    export DotProdMatC;

    
}