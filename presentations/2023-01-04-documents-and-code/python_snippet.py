#! /usr/bin/env python3
#
# schluppeck, 2022-12-10

import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
import pandas as pd

mpl.use('tkagg')

file_name = "2017-mysteryTimeseries.csv"
rawdata = pd.read_csv(file_name)

data = rawdata.rename(
    columns={
        "theTime_day" : "date",  
        "n" : "interactions",
    }
)

# can inspect first few rows
data.head() 

fig, ax = plt.subplots()
data.plot()
plt.legend("")
plt.xlabel('Days on course')
plt.ylabel('Moodle interactions')
plt.show()

