namespace Utilities.Matrices.Properties {
    import Std.Arrays.*;
    import Std.Diagnostics.*;

    /// Obtain the number of dimensions of the array
    function Shape<'T>(m : 'T[][]) : (Int, Int) {
        Fact(IsRectangularArray(m), "Array must be rectangular");
        (Length(m), Length(Head(m)))
    }

    function RowCount<'T>(m : 'T[][]) : Int {
        Length(m)
    }

    function ColCount<'T>(m : 'T[][]) : Int {
        Fact(IsRectangularArray(m), "Array must be rectangular");
        Length(Head(m))
    }

    function Columns<'T>(m : 'T[][]) : 'T[][] {
        Transposed(m)
    }
}