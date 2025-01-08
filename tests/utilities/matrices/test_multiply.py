import qsharp
qsharp.init(project_root = "./")


def test_matrix_dot_product():
    qscode = ("import Utilities.Matrices.*;"
              "import Utilities.Matrices.Multiply.*;"
              "RealMat(DotProdMatC(ToCMat([[1., 2.], [3., 4.]]), ToCMat([[5., 6.], [7., 8.]])));")
    
    result = qsharp.eval(qscode)

    assert result == [[19.0, 22.0], 
                      [43.0, 50.0]]