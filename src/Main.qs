import Std.Core;
import Std.Math.*;
import Std.Arrays.*;
import Std.Diagnostics.*;
import Utilities.Complex.*;
import Utilities.Matrices.*;


// function DotProdVecMain() : Complex {
//     DotProdVec(ToCVec([1., 3., -5.]), ToCVec([4., -2., -1.]))
// }


// function DotProdVecMatMain() : Complex[] {
//     // DotProdVecMat(ToCMat([[4., -2., -1.], [4., -2., -1.], [4., -2., -1.]]), ToCVec([1., 3., -5.]))
//     DotProdVecMat(ToCMat([[1., 2., 3.], [4., 5., 6.]]), ToCVec([1., 2., 3.]))
// }

@EntryPoint()
function DotProdMatsMain() : Bool {
    Complex(1., 1.) == Complex(1., 1.)
    // RealMat(DotProdMatC(ToCMat([[1., 2.], [3., 4.]]), ToCMat([[5., 6.], [7., 8.]])))
}

// function Main2() : Complex[][] {

//     Inverted2x2(Ex2x2())

    // Assert(Complex(1., 1.), Complex(1., 1.))

    // let arrC1 = [[Complex(1., 2.), Complex(3., 4.)],
    //              [Complex(1., 2.), Complex(3., 4.)]];
    // let arrC2 = [[Complex(1., 2.), Complex(3., 4.)],
    //              [Complex(1., 2.), Complex(3., 5.)]];
    // EqualMatricesC(arrC1, arrC2)
    // let mat = [[Complex(1., 0.), Complex(0., 1.)],
    //             [Complex(0., -1.), Complex(2., 0.)]];
    // IsHermitian(mat)
    // 2. * Complex(1., 2.);
// }


    // TODO: Write your Q# code here.
    // let x = ComplexPolar(9.309, 1.925);
    // let y = ComplexPolar(7.197, 1.764);
    // let result = ComplexPolarMult(x, y);
    // return result;