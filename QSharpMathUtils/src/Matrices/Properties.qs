namespace Matrices.Properties {
    import Std.Arrays.*;
    import Std.Diagnostics.*;

    /// Obtain the number of dimensions of the array
    function Shape<'T>(m : 'T[][]) : (Int, Int) {
        Fact(IsRectangularArray(m), "Array must be rectangular");
        (Length(m), Length(Head(m)))
    }

    /// Return the number of rows of a matrix
    function RowCount<'T>(m : 'T[][]) : Int {
        Length(m)
    }

    /// Return the number of columns of a matrix
    function ColCount<'T>(m : 'T[][]) : Int {
        Fact(IsRectangularArray(m), "Array must be rectangular");
        Length(Head(m))
    }

    /// Return the columns of a matrix, as an array of arrays
    function Columns<'T>(m : 'T[][]) : 'T[][] {
        Fact(IsRectangularArray(m), "2D Array must be rectangular");
        Transposed(m)
    }

    export Shape, RowCount, ColCount, Columns;
}