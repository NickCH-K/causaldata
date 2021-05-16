# causaldata

This R package contains data sets that can be used to implement the code examples in causal inference textbooks.

As of the moment, this contains data sets from [The Effect](https://theeffectbook.net) by Huntington-Klein, [Causal Inference: The Mixtape](https://mixtape.scunning.com/index.html) by Scott Cunningham, and [Causal Inference: What If?](https://www.hsph.harvard.edu/miguel-hernan/causal-inference-book/) by Hernán and Robins. The `judge_fe` data set from The Mixtape is too large to include, and so is omitted.

Data sets are stored as `tibble`s and come with attached variable labels. After the data set is loaded, you can view all variables and their variable labels with `vtable::vtable()`, or use `help()` on the data set.

See `help(package = 'causaldata')` for a list of data sets included.

This package can be installed with:

```r
# If necessary: install.packages('remotes')
remotes::install_github('NickCH-K/causaldata/R/')
```