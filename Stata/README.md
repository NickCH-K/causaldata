# causaldata

This Stata package contains data sets that can be used to implement the code examples in causal inference textbooks.

As of the moment, this contains data sets from [The Effect](https://theeffectbook.net) by Huntington-Klein, [Causal Inference: The Mixtape](https://mixtape.scunning.com/index.html) by Scott Cunningham, and [Causal Inference: What If?](https://www.hsph.harvard.edu/miguel-hernan/causal-inference-book/) by Hernán and Robins. The `judge_fe` data set from The Mixtape is too large to include, and so is omitted.

After the package is installed, you should be able to access the data set of your choice using `sysuse`.

Run `causaldata` for a list of data sets included and to get information about the data sets.

This package can be installed with:

```stata
net install causaldata, from("https://raw.githubusercontent.com/NickCH-K/causaldata/master/Stata/")
```