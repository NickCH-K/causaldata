[![](https://img.shields.io/pypi/dm/causaldata.svg)](https://pypi.org/project/causaldata)

# causaldata

This Python package contains data sets that can be used to implement the code examples in causal inference textbooks.

As of the moment, this contains data sets from [The Effect](https://theeffectbook.net) by Huntington-Klein, [Causal Inference: The Mixtape](https://mixtape.scunning.com/index.html) by Scott Cunningham, and [Causal Inference: What If?](https://www.hsph.harvard.edu/miguel-hernan/causal-inference-book/) by Hernán and Robins. The `judge_fe` data set from The Mixtape is too large to include, and so is omitted.

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

To install, do 

```python
pip install causaldata
```

Or, for the dev version:

At some point I will figure out how to tell you to install this package from GitHub. But for now, [download this package](https://github.com/NickCH-K/causaldata/archive/refs/heads/main.zip), unzip it, change the directory to the `causaldata/Python` folder, and install with:

```python
python setup.py install
```

Or, if you're using something with IPython like Spyder, you might use

```python
runfile('the/full/path/to/causaldata/Python/setup.py', wdir='your/working/directory',args='install')
```
