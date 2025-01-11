import Std.Core;
import Std.Math.*;
import Std.Arrays.*;
import Std.Diagnostics.*;

import Vectors.RealVec;
import Vectors.EmptyVecT;
import Matrices.*;
import Matrices.Invert.*;
import Matrices.Identity.*;
import Matrices.Multiply.*;
import Complex.*;
import Categories.Monoid.*;

@EntryPoint()
function Main() :   Double[][] {

    let matrix = [[1., 2.], [3., 4.]];
    let matrix2 = [[-1., 3./2.], [1., -1.]];
    MatMul(matrix2, Invert2x2D(matrix2))

}

function TestMonoidReduce() : (Int, Int) {
    let sum = MonoidReduce(0, (x, y) -> x + y);
    let product = MonoidReduce(1, (x, y) -> x * y);
    (product([1, 2, 3, 4]), sum([1, 2, 3, 4]))
}
