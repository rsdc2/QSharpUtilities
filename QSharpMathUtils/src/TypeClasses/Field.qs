namespace TypeClasses.Field {

    /// Define a field
    function Field<'T>(
        add: ('T, 'T) -> 'T, 
        addInverse: 'T -> 'T, 
        addId: 'T,
        mul: ('T, 'T) -> 'T, 
        mulInverse: 'T -> 'T,
        mulId: 'T) : (('T, 'T) -> 'T, 'T -> 'T, 'T, ('T, 'T) -> 'T, 'T -> 'T, 'T) {
            return (add, addInverse, addId, mul, mulInverse, mulId)
        }

    function GetAdd<'T>(field : (('T, 'T) -> 'T, 'T -> 'T, 'T, ('T, 'T) -> 'T, 'T -> 'T, 'T)) : (('T, 'T) -> 'T) {
        let (add, _, _, _, _, _)= field;
        add
    }

    function GetAddInverse<'T>(field : (('T, 'T) -> 'T, 'T -> 'T, 'T, ('T, 'T) -> 'T, 'T -> 'T, 'T)) : ('T -> 'T) {
        let (_, addInverse, _, _, _, _)= field;
        addInverse
    }

    function GetAddId<'T>(field : (('T, 'T) -> 'T, 'T -> 'T, 'T, ('T, 'T) -> 'T, 'T -> 'T, 'T)) : 'T {
        let (_, _, addId, _, _, _)= field;
        addId
    }

    function GetMul<'T>(field : (('T, 'T) -> 'T, 'T -> 'T, 'T, ('T, 'T) -> 'T, 'T -> 'T, 'T)) : (('T, 'T) -> 'T) {
        let (_, _, _, mul, _, _)= field;
        mul
    }

    function GetMulInverse<'T>(field : (('T, 'T) -> 'T, 'T -> 'T, 'T, ('T, 'T) -> 'T, 'T -> 'T, 'T)) : ('T -> 'T) {
        let (_, _, _, _, mulInverse, _)= field;
        mulInverse
    }

    function GetMulId<'T>(field : (('T, 'T) -> 'T, 'T -> 'T, 'T, ('T, 'T) -> 'T, 'T -> 'T, 'T)) : 'T {
        let (_, _, _, _, _, mulId)= field;
        mulId
    }

    
    function Add<'T>(
        field: (('T, 'T) -> 'T, 'T -> 'T, 'T, ('T, 'T) -> 'T, 'T -> 'T, 'T),
        x : 'T,
        y : 'T) : 'T {
            let add = GetAdd(field);
            add(x, y)
        }

    function Sub<'T>(
        field: (('T, 'T) -> 'T, 'T -> 'T, 'T, ('T, 'T) -> 'T, 'T -> 'T, 'T),
        x : 'T,
        y : 'T) : 'T {
            let inv = GetAddInverse(field);
            let add = GetAdd(field);
            add(x, inv(y))
        }

    function Mul<'T>(
        field: (('T, 'T) -> 'T, 'T -> 'T, 'T, ('T, 'T) -> 'T, 'T -> 'T, 'T),
        x : 'T,
        y : 'T) : 'T {
            let mul = GetMul(field);
            mul(x, y)
        }

    function Div<'T>(
        field: (('T, 'T) -> 'T, 'T -> 'T, 'T, ('T, 'T) -> 'T, 'T -> 'T, 'T),
        x : 'T,
        y : 'T) : 'T {
            let inv = GetMulInverse(field);
            let mul = GetMul(field);
            mul(x, inv(y))
        }
}