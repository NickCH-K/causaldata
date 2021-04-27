# causaldata

This R package contains data sets that can be used to implement the code examples in causal inference textbooks.

As of the moment, this only contains data sets from [The Effect](http://www.nickchk.com/causalitybook.html) by Huntington-Klein.

Data sets are stored as `tibble`s and come with attached variable labels. After the data set is loaded, you can view all variables and their variable labels with `vtable::vtable()`, or use `help()` on the data set.

See `help(package = 'causaldata')` for a list of data sets included.