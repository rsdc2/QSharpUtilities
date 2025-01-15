import qsharp # type: ignore
import pytest
import numpy as np

from .test_multiply import matrix_dot_product_code
from ..setup import init_qsharp

init_qsharp()

id2x2 = [[1., 0.],
        [0., 1.]]


