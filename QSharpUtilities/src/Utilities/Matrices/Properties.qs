namespace Utilities.Matrices.Properties {
    import Std.Arrays.*;
    import Std.Diagnostics.*;

    

    /// Obtain the number of dimensions of the array
    function Shape(m : Double[][]) : (Int, Int) {
        Fact(IsRectangularArray(m), "Array must be rectangular");
        (Length(m), Length(m[0]))
    }

}