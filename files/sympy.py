import matplotlib.pyplot as plt
import numpy as np
# import pandas as pd
# import datetime
# import scipy.stats as st
# import math

n = 100
x = np.random.rand(n)
y = 3 + 7 * x + np.random.rand(n)
print(y)
plt.scatter(x, y)
plt.show()
