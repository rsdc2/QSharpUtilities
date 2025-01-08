import qsharp
qsharp.init(project_root = "./QSharpUtilities")


def test_shape():
    qscode = ("import Utilities.Matrices.Properties.*;"
              "Shape([[1., 2.]])")

    result = qsharp.eval(qscode)

    assert result == 0