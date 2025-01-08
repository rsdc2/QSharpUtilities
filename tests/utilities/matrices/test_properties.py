import qsharp # type: ignore
import pytest
qsharp.init(project_root = "./QSharpUtilities")

@pytest.mark.parametrize(("m", "shape"), [
    ([[1., 2.], 
      [1., 2.]], (2, 2)),
    ([[1., 2., 3.], 
      [1., 2., 3.]], (2, 3))
])
def test_shape(m: list[list[float]], shape: tuple[int, int]):
    qscode = ("import Utilities.Matrices.Properties.*;"
              f"Shape({m})")

    result = qsharp.eval(qscode)

    assert result == shape