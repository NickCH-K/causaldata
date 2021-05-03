# causaldata

This repository will contain R, Stata, and Python packages, all called `causaldata`, which contain data sets that can be used to implement the code examples in causal inference textbooks.

As of the moment, this contains data sets from [The Effect](http://www.nickchk.com/causalitybook.html) by Huntington-Klein. Data sets from [Causal Inference: The Mixtape](https://mixtape.scunning.com/index.html) by Scott Cunningham are currently being added.

Data sets all come with documentation in the form of variable labels, although the exact format of this varies from language to language.

The R package can be installed with:

```r
# If necessary: install.packages('remotes')
remotes::install_github('NickCH-K/causaldata/R/')
```

The Stata package can be installed with:

```stata
net install causaldata, from("https://raw.githubusercontent.com/NickCH-K/causaldata/master/Stata/")
```

To install the Python package, use the green Code button on this page to [download this repository](https://github.com/NickCH-K/causaldata/archive/refs/heads/main.zip), unzip it, change the directory to the `causaldata/Python` folder, and install with:

```python
python setup.py install
```

Or, if you're using something with IPython like Spyder, you might use

```python
runfile('the/full/path/to/causaldata/Python/setup.py', wdir='your/working/directory',args='install')
```