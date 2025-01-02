import Std.Math.ComplexPolar;
import Std.Math.*;
import Std.Arrays.*;
open Utilities.Complex;
open Utilities.Matrices;
open Utilities.Vector;

@EntryPoint()
function Main() : Bool {

    let arrC1 = [Complex(1., 2.), Complex(3., 4.)];
    let arrC2 = [Complex(1., 2.), Complex(3., 4.)];

    AreEqualVectorsC(arrC1, arrC2)
    
}


    // TODO: Write your Q# code here.
    // let x = ComplexPolar(9.309, 1.925);
    // let y = ComplexPolar(7.197, 1.764);
    // let result = ComplexPolarMult(x, y);
    // return result;