"""Data from gapminder"""

from statsmodels.datasets import utils as du

__docformat__ = 'restructuredtext'

COPYRIGHT = """Gapminder"""
TITLE = __doc__
SOURCE = """
http://www.gapminder.org/data/
Jennifer Bryan (2017). gapminder: Data from Gapminder. R package version 0.3.0. https://CRAN.R-project.org/package=gapminder
"""

DESCRSHORT = """The gapminder data contains data on life expectancy and GDP per capita by country and year."""

DESCRLONG = """This data set is the same one found in the gapminder package in R as of 2020. This data set is used in the Fixed Effects chapter of The Effect."""

NOTE = """::
    Number of observations - 1704
    Number of variables - 6
    Variables name definitions::
            country - The country
            continent - The continent the country is in
            year - The year data was collected. Ranges from 1952 to 2007 in increments of 5 years
            lifeExp - Life expectancy at birth, in years
            pop - Population
            gdpPercap - GDP per capita (US$, inflation-adjusted)
"""


def load_pandas():
    """Load the gapminder data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the gapminder data and returns a Dataset class.
    Parameters
    ----------
    as_pandas : bool
        Flag indicating whether to return pandas DataFrames and Series
        or numpy recarrays and arrays.  If True, returns pandas.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    return du.as_numpy_dataset(load_pandas(), as_pandas=as_pandas)


def _get_data():
    data = du.load_csv(__file__, 'gapminder.csv', sep=',')
    data = du.strip_column_names(data)
    return data
