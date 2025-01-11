namespace Matrices.Identity {
    import Std.Arrays.*;
    import Vectors.*;

    function Id2x2() : Double[][] {
        [[1., 0.],
         [0., 1.]]
    }

    function IdentityMatrix(n : Int) : Double[][] {
        // Mapped(y -> Mapped(x -> x == y ? 1. | 0., [0..n]), [0..n])
        let emptyRow = Enumerated(EmptyVecT(n, 0.)); 
        let emptyMatrix = Enumerated(EmptyVecT(n, emptyRow));
        
        let m = Mapped((i, xs) -> Mapped((j, x) -> i == j ? 1. | 0., xs), emptyMatrix);
        m
    }

}