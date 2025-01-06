# Q# Utilties

This is a utility library I am writing as I learn Q# and quantum programming. It comprises functions I have found helpful that do not currently appear (as far as I can see) in the standard library. Functions cover the following areas:

- Complex numbers: `Complex.qs`, namespace `Utilities.Complex`
- Vectors: `Vectors.qs`, namespace `Utilities.Vectors`
- Matrices: `Matrices.qs` and the `Matrices` folder, namespace `Utilities.Matrices`
- Functions: `Functions.qs`

## Complex numbers

### `Conjugate(complex : Complex) : Complex`

Produces the complex conjugate of input parameter `complex`.

### `EqualC(x : Complex, y : Complex) : Bool`

Complex numbers cannot be directly compared. Thus the following expression produces a type error, since the Complex struct does not support equality:

```
Complex(1., 1.) == Complex(1., 1.)
```

The `EqualC` function performs this comparison:

```
EqualC(Complex(1., 1.), Complex(1., 1.)); // Evaluates to true
```

## Functions

### Curry2<'T, 'U, 'V>(f : ('T, 'U) -> 'V) : ('T -> 'U -> 'V)

Takes a function with a pair of parameters, and returns a curried version of it, i.e. two functions taking a single parameter each. For example, whereas `EqualC` has the type signature:

```
(Complex, Complex) -> Bool
```

in the following:

```
let equalC = Curry2(EqualC);
```

`equalC` has the type signature:

```
Complex -> Complex -> Bool
```