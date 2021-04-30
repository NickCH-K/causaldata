# causaldata

This Python package contains data sets that can be used to implement the code examples in causal inference textbooks.

As of the moment, this only contains data sets from [The Effect](http://www.nickchk.com/causalitybook.html) by Huntington-Klein.

Data sets are stored as submodules. This package uses the same structure as, and imports code from, the **statsmodels.datasets** package, so the documentation on use [here](https://www.statsmodels.org/devel/datasets/index.html) applies to **causaldata**.

For example, to load and view documentation for the `black_politicians` data set:

Load as **numpy** array or **pandas** `DataFrame`:

```python
d_numpy = causaldata.black_politicians.load().data
d_pandas = causaldata.black_politicians.load_pandas().data
```

To view the descriptions of the variables, the description of the data overall, and the source:

```python
print(causaldata.black_politicians.NOTE)
print(causaldata.black_politicians.DESCRLONG)
print(causaldata.black_politicians.SOURCE)
```

To see a list of all included data sets, do `dir(causaldata)`

At some point I will figure out how to tell you to install this package from GitHub. But for now, [download this package](https://github.com/NickCH-K/causaldata/archive/refs/heads/main.zip), unzip it, locate the filepath of the `causaldata/Python` folder, and use **pip**:

```python
pip install -e "full/filepath/to/causaldata/Python"
```