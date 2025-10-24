# Classifying Objects

## General Code Requirements

[Python](https://python.org/) is a popular language for scientific computing, and a frequent choice for machine learning as well. Should you already be familiar with installing python packages, please consider using [pip+venv](https://pypi.org/project/pip/) (both of these modules are included in your python installation). Should you be a python beginner, we advise you to use package management tools like [mamba](https://mamba.readthedocs.io/en/latest/installation/mamba-installation.html).

Regardless of how you choose to install it, please make sure you install Python version 3.x (e.g., 3.8 and above should be fine). Also, please set up your python environment at least a day in advance of the lab. If you encounter problems with the installation procedure.


### Instructions for this Lab

- create a virtual environment `python -m venv ml2324 --upgrade-deps`
- activate environment `source ml2324/bin/activate`
- install requirements `python -m pip install -r ./requirements.txt`

This should produce something like so:

```
# ...
Downloading pyparsing-3.1.1-py3-none-any.whl (103 kB)
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 103.1/103.1 kB 2.4 MB/s eta 0:00:00
Installing collected packages: pytz, tzdata, threadpoolctl, six, pyparsing, pillow, packaging, numpy, kiwisolver, joblib, fonttools, cycler, scipy, python-dateutil, contourpy, scikit-learn, pandas, matplotlib, seaborn
Successfully installed contourpy-1.1.1 cycler-0.12.1 fonttools-4.43.1 joblib-1.3.2 kiwisolver-1.4.5 matplotlib-3.8.0 numpy-1.26.1 packaging-23.2 pandas-2.1.1 pillow-10.1.0 pyparsing-3.1.1 python-dateutil-2.8.2 pytz-2023.3.post1 scikit-learn-1.3.1 scipy-1.11.3 seaborn-0.13.0 six-1.16.0 threadpoolctl-3.2.0 tzdata-2023.3
```

After this, you should be able to open the notebook and run it with `jupyter`.

```
$ jupyter nbclassic decision_trees_with_peanuts.ipynb
```

> If you have an old'ish version of `jupyter` installed, do:
> ```
> $ jupyter notebook decision_trees_with_peanuts.ipynb
> ```
> 

**Note**: The `jupyter` ecosystem is not included in the requirements file. Should you get errors when calling `jupyter`, it has to be installed by issueing `python -m pip install jupyter`. 
