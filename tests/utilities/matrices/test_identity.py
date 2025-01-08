import qsharp
qsharp.init(project_root = "./")


def test_2x2_identity():
    qscode = ("import Utilities.Matrices.Identity.*;"
              "Id2x2()")

    result = qsharp.eval(qscode)

    assert result == [[1., 0.],
                      [0., 1.]]