import qsharp # type: ignore
import pytest
import numpy as np

from .test_multiply import matrix_dot_product_code
from ..setup import init_qsharp

init_qsharp()

id2x2 = [[1., 0.],
        [0., 1.]]

# cf. https://en.wikipedia.org/wiki/Invertible_matrix
@pytest.mark.parametrize("matrix", [
    [[-1., 3/2],
     [1., -1.]],
    [[1., 0.],
     [0., 1.]],
    [[2., 1.],
     [3., 4.]]
])
def test_apply_2x2_identity_happy(matrix: list[list[float]]):
    qscode = ("import Matrices.Multiply.*;"
              "import Matrices.Inverse.*;"
              f"MatMulD(Inverted2x2D({matrix}), {matrix});")

    result = qsharp.eval(qscode)

    assert result == id2x2
