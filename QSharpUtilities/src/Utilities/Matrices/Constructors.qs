namespace Utilities.Matrices.Constructors {

    import Utilities.Matrices.Identity.IdentityMatrix;
    import Utilities.Categories.Monoid.*;
    import Utilities.Matrices.Multiply.*;
    newtype Matrix = Double[][];

    function MonoidReduceMatrixNxN(n : Int) : (Double[][][] -> Double[][]) {
        MonoidReduce(IdentityMatrix(n), MatMul)
    }

}