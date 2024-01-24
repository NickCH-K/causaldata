# causaldata

This Stata package contains data sets that can be used to implement the code examples in causal inference textbooks.

As of the moment, this contains data sets from [The Effect](https://theeffectbook.net) by Huntington-Klein, first and second edition, [Causal Inference: The Mixtape](https://mixtape.scunning.com/index.html) by Scott Cunningham, and [Causal Inference: What If?](https://www.hsph.harvard.edu/miguel-hernan/causal-inference-book/) by Hernán and Robins. The `judge_fe` data set from The Mixtape is too large to include, and so is omitted.

After the package is installed, use `causaldata` to explore and open the datasets, or download them from **ssc**. Installing directly from GitHub will do the downloading for you at package install, but this doesn't really save much of a step since you'll want to use `causaldata` to open them anyway.

Run `causaldata` for a list of data sets included and `causaldata [name]` or `causaldata *` to get information about the data sets.

This package can be installed with:

```stata
ssc install causaldata

* Or for the dev version (currently identical)
net install causaldata, from("https://raw.githubusercontent.com/NickCH-K/causaldata/master/Stata/")
```