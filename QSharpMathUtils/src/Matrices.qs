namespace Matrices {
    import Std.Math.*;
    import Std.Arrays.*;

    import Vectors.*;

    import Matrices.Conjugate.*;
    import Matrices.Identity.*;
    import Matrices.Inverse.*;
    import Matrices.Multiply.*;
    
    function ToCMat(A : Double[][]) : Complex[][] {
        Mapped(ToVecC, A)
    }   

    /// Convert a complex matrix into a real matrix
    /// by taking only the real components of all
    /// the complex numbers
    function RealMat(A : Complex[][]) : Double[][] {
        Mapped(ToVecReal, A)
    }

    export DotProdMatC;

    
}