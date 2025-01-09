namespace Utilities.Matrices.Identity {
    import Std.Arrays.*;

    function Id2x2() : Double[][] {
        [[1., 0.],
         [0., 1.]]
    }

    function IdentityMatrix(n : Int) : Double[][] {
        Mapped(y -> Mapped(x -> x == y ? 1. | 0., [1..n]), [1..n])
    }

}