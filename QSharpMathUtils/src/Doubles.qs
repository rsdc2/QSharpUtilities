namespace Doubles {

    import Std.Convert.*;
    import Std.Math.*;

    /// Round a Double to a fixed number of decimal places
    function Rnd(x : Double, decimalPlaces : Int) : Double {
        let multiplier = 10. ^ IntAsDouble(decimalPlaces);
        let multiplied = x * multiplier;
        let rounded = IntAsDouble(Round(multiplied));
        rounded / multiplier
    }

    export Rnd;
}