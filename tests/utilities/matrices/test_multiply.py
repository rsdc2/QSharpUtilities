import qsharp # type: ignore
import numpy as np

qsharp.init(project_root = "./QSharpUtilities")

def matrix_dot_product_code(m1: list[list[float]], m2: list[list[float]]) -> str:
    return (f"import Utilities.Matrices.*;"
              "import Utilities.Matrices.Multiply.*;"
              f"RealMat(DotProdMatC(ToCMat({m1}), ToCMat({m2})));")

def test_matrix_dot_product_happy():
    m1 = [[1., 2.], [3., 4.]]
    m2 = [[5., 6.], [7., 8.]]
    qscode = matrix_dot_product_code(m1, m2)
    
    result = qsharp.eval(qscode)

    assert np.array_equal(np.array(result), np.array(m1) @ np.array(m2))