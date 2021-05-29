# causaldata

This repository will contain R, Stata, and Python packages, all called `causaldata`, which contain data sets that can be used to implement the code examples in causal inference textbooks.

As of the moment, this contains data sets from [The Effect](https://theeffectbook.net) by Huntington-Klein, [Causal Inference: The Mixtape](https://mixtape.scunning.com/index.html) by Scott Cunningham, and [Causal Inference: What If?](https://www.hsph.harvard.edu/miguel-hernan/causal-inference-book/) by Hernán and Robins. The `judge_fe` data set from The Mixtape is too large to include, and so is omitted.

Data sets all come with documentation in the form of variable labels, although the exact format of this varies from language to language.

## R

The R package can be installed with:

```r
install.packages('causaldata')

# Or dev version (currently identical):
# If necessary: install.packages('remotes')
remotes::install_github('NickCH-K/causaldata/R/')
```

## Stata

The Stata package can be installed with:

```stata
ssc install causaldata

* Or for the dev version (currently identical)
net install causaldata, from("https://raw.githubusercontent.com/NickCH-K/causaldata/master/Stata/")
```

## Python

To install the Python package, do

```python
pip install causaldata
```

For the dev version (currently identical), use the green Code button on this page to [download this repository](https://github.com/NickCH-K/causaldata/archive/refs/heads/main.zip), unzip it, change the directory to the `causaldata/Python` folder, and install with:

```python
python setup.py install
```

Or, if you're using something with IPython like Spyder, you might use

```python
runfile('the/full/path/to/causaldata/Python/setup.py', wdir='your/working/directory',args='install')
```