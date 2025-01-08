namespace Utilities.Complex {
    import Std.Math.*;

    /// Return the conjugate of a complex number
    function Conjugate(complex : Complex) : Complex {
        complex w/ Imag <- -complex.Imag
    }

    function EqualC(x : Complex, y : Complex) : Bool {
        x.Imag == y.Imag and x.Real == y.Real
    }

    function EqualC_ () : Complex -> Complex -> Bool {
        x -> y -> x.Imag == y.Imag and x.Real == y.Real
    }
    
    function NegC(x : Complex) : Complex {
        MinusC(Complex(0., 0.), x)
    }

    /// Convert a Double to a Complex
    function ToC(x : Double) : Complex {
        Complex(x, 0.)
    }

    function Real(x : Complex) : Double {
        x.Real
    }

}