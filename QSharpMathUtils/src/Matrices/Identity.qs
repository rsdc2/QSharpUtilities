namespace Matrices.Identity {
    import Std.Arrays.*;
    import Vectors.*;

    function Id2x2() : Double[][] {
        [[1., 0.],
         [0., 1.]]
    }

    /// Return the identity for an nxn matrix
    function IdentityMatrix(n : Int) : Double[][] {
        let emptyRow = Enumerated(EmptyVecT(n, 0.)); 
        let emptyMatrix = Enumerated(EmptyVecT(n, emptyRow));
        
        let m = Mapped((i, xs) -> Mapped((j, x) -> i == j ? 1. | 0., xs), emptyMatrix);
        m
    }

    export Id2x2, IdentityMatrix;

}