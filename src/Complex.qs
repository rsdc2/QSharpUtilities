namespace Utilities.Complex {
    import Std.Math.Complex;

    /// Return the conjugate of a complex number
    function Conjugate(complex : Complex) : Complex {
        complex w/ Imag <- -complex.Imag
    }

    function EqualC(x : Complex, y : Complex) : Bool {
        x.Imag == y.Imag and x.Real == y.Real
    }
    
}