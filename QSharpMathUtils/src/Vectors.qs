namespace Vectors {
    import Std.Math.*;
    import Std.Arrays.*;
    import Std.Diagnostics.*;
    import Complex.*;
    import Functions.*;
    import Matrices.Properties.*;

    function ScalarMulVecT<'T>(x : 'T, vec : 'T[], mul : ('T, 'T) -> 'T) : 'T[] {
        Mapped(y -> mul(x, y), vec)
    }
    
    /// Multiply a complex vector by a scalar complex
    function ScalarMulVecC(x : Complex, A : Complex[]) : Complex[] {
        Mapped(y -> TimesC(x, y), A)
    }

    function MappedPartial<'T, 'U, 'V>(A : 'T[], f : 'T -> 'U -> 'V) : ('U -> 'V)[] {
        Mapped(f, A)
    }

    function EmptyT<'T>(n : Int, empty: 'T) : 'T[] {
        mutable ts : 'T[] = [];
        for i in 1 .. n {
            ts += [empty];
        }
        ts
    }

    function EqualV<'T>(pred : 'T -> 'T -> Bool, A : 'T[], B : 'T[]) : Bool {
        let partiallyApplied = Mapped(pred, A);
        let applied = Zipped(partiallyApplied, B);
        Std.Arrays.
        All((f, x) -> f(x), applied)
    }

    function EqualVectorsC(A : Complex[], B: Complex[]) : Bool {
        let equal = Curry2(EqualC);
        EqualV(equal, A, B)
    } 

    /// Convert a Double vector to a Complex vector
    function ToCVec(A : Double[]) : Complex[] {
        Mapped(ToC, A)
    }

    function RealVec(A : Complex[]) : Double[] {
        Mapped(Real, A)
    }

    function DotProdVecT<'T>(A : 'T[], B : 'T[], empty : 'T, mul : ('T, 'T) -> 'T, add : ('T, 'T) -> 'T) : 'T {
        Fact(Length(A) == Length(B), "Vectors must be of equal length");
        let zipped = Zipped(A, B);
        let multiplied = Mapped((x, y) -> mul(x, y), zipped);
        let summed = Fold((x, y) -> add(x, y), empty, multiplied);
        summed
    }

    function DotProdVec(A : Double[], B : Double[]) : Double {
        DotProdVecT(A, B, 0., (x, y) -> x * y, (x, y) -> x + y)
    }

    function DotProdVecC(A : Complex[], B : Complex[]) : Complex {
        DotProdVecT(A, B, ToC(0.), (x, y) -> TimesC(x, y), (x, y) -> PlusC(x, y))
    }

    function DotProdVecMatT<'T>(A : 'T[][], B : 'T[], empty : 'T, mul : ('T, 'T) -> 'T, add : ('T, 'T) -> 'T) : 'T[] {
        Fact(ColCount(A) == Length(B), "Number of columns of A must be the same as the length of B.");
        Mapped(DotProdVecT(B, _, empty, mul, add), A)
    }

    function DotProdVecMat(A : Double[][], B : Double[]) : Double[] {
        Fact(ColCount(A) == Length(B), "Number of columns of A must be the same as the length of B.");
        Mapped(DotProdVec(B, _), A)
    }

    function DotProdVecMatC(A : Complex[][], B : Complex[]) : Complex[] {
        Fact(ColCount(A) == Length(B), "Number of columns of A must be the same as the length of B.");
        Mapped(DotProdVecC(B, _), A)
    }
}