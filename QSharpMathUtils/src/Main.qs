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
function Main() : Int {
    let add : (Int, Int) -> Int = (x, y) -> x + y;
    let mul3 : Int -> Int = x -> x * 3;

    let f = Composed2(add(1, _), mul3);
    f(1)

}

function TestMonoidReduce() : (Int, Int) {
    let sum = MonoidReduce(0, (x, y) -> x + y);
    let product = MonoidReduce(1, (x, y) -> x * y);
    (product([1, 2, 3, 4]), sum([1, 2, 3, 4]))
}
