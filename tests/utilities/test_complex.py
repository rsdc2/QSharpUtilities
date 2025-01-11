import qsharp # type: ignore
from .setup import init_qsharp

init_qsharp()

def test_complex_equal_happy():
    # Arrange
    qscode = ("import Std.Math.*;"
             "import Utilities.Complex.*;"
             "EqualC(Complex(1., 0.), Complex(1., 0.));")

    # Act
    result = qsharp.eval(qscode)

    # Assert
    assert result == True


def test_complex_equal_sad():
    # Arrange
    qscode = ("import Std.Math.*;"
             "import Utilities.Complex.*;"
             "EqualC(Complex(1., 0.), Complex(1., 1.));")

    # Act
    result = qsharp.eval(qscode)

    # Assert
    assert result == False


def test_to_complex():
    # Arrange
    qscode = ("import Utilities.Complex.*;"
              "ToC(1.3)")
    
    # Act
    result = qsharp.eval(qscode)

    # Assert
    assert result == (1.3, 0.0)
