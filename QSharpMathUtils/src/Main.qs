import Std.Core;
import Std.Math.*;
import Std.Arrays.*;
import Std.Diagnostics.*;

import Vectors.ToVecReal;
import Vectors.EmptyVecT;
import Matrices.*;
import Matrices.Invert.*;
import Matrices.Identity.*;
import Matrices.Multiply.*;
import Complex.*;
import Categories.Monoid.*;
import HigherOrderFunctions.*;

@EntryPoint()
function Main() : Complex {
    MonoidReduce(MonoidMulC(), [Complex(1., 3.), Complex(1., 0.), Complex(1., 0.)])
}


function TestMonoidReduce() : (Int, Int) {
    let monoidSum = Monoid((x, y) -> x + y, 0);
    let monoidProd = Monoid((x, y) -> x * y, 1);
    let sum = MonoidReduce(monoidSum, _);
    let product = MonoidReduce(monoidProd, _);
    (product([1, 2, 3, 4]), sum([1, 2, 3, 4]))
}
