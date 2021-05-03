# causaldata

This R package contains data sets that can be used to implement the code examples in causal inference textbooks.

As of the moment, this contains data sets from [The Effect](http://www.nickchk.com/causalitybook.html) by Huntington-Klein. Data sets from [Causal Inference: The Mixtape](https://mixtape.scunning.com/index.html) by Scott Cunningham are currently being added.

Data sets are stored as `tibble`s and come with attached variable labels. After the data set is loaded, you can view all variables and their variable labels with `vtable::vtable()`, or use `help()` on the data set.

See `help(package = 'causaldata')` for a list of data sets included.

This package can be installed with:

```r
# If necessary: install.packages('remotes')
remotes::install_github('NickCH-K/causaldata/R/')
```