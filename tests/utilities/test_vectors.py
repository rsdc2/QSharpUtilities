import qsharp # type: ignore
qsharp.init(project_root = "./QSharpMathUtils")

def test_vectors_equal():

    # Arrange
    qscode = ("import Utilities.Complex.*;"
              "import Utilities.Vectors.*;"
              "let vector = [ToC(1.), ToC(2.)];"
              "ScalarMulVecC(ToC(2.), vector);")
    # Act
    result = qsharp.eval(qscode)

    # Assert
    assert result == [(2., 0.), (4., 0.)]