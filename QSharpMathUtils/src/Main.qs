import Matrices.Complex.Comparison.MatricesEqualC;
import Matrices.Complex.Conjugate.ConjugateMatrix;
import Std.Core;
import Std.Math.*;
import Std.Arrays.*;
import Std.Diagnostics.*;
import Std.Convert.*;

import Doubles.*;
import Vectors.*;
import Complex.*;
import Matrices.*;
import Matrices.Inverse.*;
import Matrices.Identity.*;
import Matrices.Multiply.*;
import Matrices.Complex.Unitary.*;
import Matrices.Complex.Inverse.*;
import Matrices.Complex.AdjointM.*;
import Matrices.Complex.Multiply.*;
import Matrices.Complex.Comparison.*;
import TypeClasses.Field.*;

import Categories.Monoid.*;
import HigherOrderFunctions.*;


function TestMonoidReduceMul() : Complex {
    MonoidReduce(MonoidMulC(), [Complex(1., 3.), Complex(1., 0.), Complex(1., 0.)])
}

@EntryPoint()
function TestField() : Double {
    let add = (x, y) -> x + y;
    let mul = (x, y) -> x * y;
    let addInv = x -> -x;
    let mulInv = x -> 1./x;
    let doubleField = Field(
        add,
        addInv,
        0.,
        mul,
        mulInv,
        1.);
    
    Div(doubleField, 1., 2.)
}

function TestUnitaryMatrices() : Bool {
    let identity = [[ToC(1.), ToC(0.)], [ToC(0.), ToC(1.)]];
    let A = [[Complex(5., 1.), Complex(2., 3.)], [Complex(3., 2.), Complex(3., 2.)]];
    let B = MatMulCScalarD(1./Sqrt(2.), [[Complex(1., 0.), Complex(1., 0.)], [Complex(0., 1.), Complex(0., -1.)]]);
    let C = [[Complex(1., 5.), Complex(2., 0.)], [Complex(3., -6.), Complex(0., 4.)]];
    let inverted = Inverted2x2C(B);
    let adj = Transposed(ConjugateMatrix(B));
    IsUnitary(C)
    // MatricesEqualC(adj, inverted)
    // Message($"{adj}")

    
}

function TestMonoidReduce() : (Int, Int) {
    let monoidSum = Monoid((x, y) -> x + y, 0);
    let monoidProd = Monoid((x, y) -> x * y, 1);
    let sum = MonoidReduce(monoidSum, _);
    let product = MonoidReduce(monoidProd, _);
    (product([1, 2, 3, 4]), sum([1, 2, 3, 4]))
}
