"""Data on Google and S&P 500 Daily Stock Returns"""

from statsmodels.datasets import utils as du

__docformat__ = 'restructuredtext'

COPYRIGHT = """?"""
TITLE = __doc__
SOURCE = """
Matt Dancho and Davis Vaughan (2021). tidyquant: Tidy Quantitative Financial Analysis. R package version 1.0.3. https://CRAN.R-project.org/package=tidyquant
"""

DESCRSHORT = """84 days of Google and S&P 500 daily stock returns from 2015"""

DESCRLONG = """The google_stock data contains data on daily stock returns for Google and the S&P 500 for May through Augut 2015, centering around the August 10, 2015 announcement that Google would reorganize under parent company Alphabet. This data was used in the Event Studies chapter in The Effect."""

NOTE = """::
    Number of observations - 84
    Number of variables - 6
    Variables name definitions::
            Date - The date
            Google_Return - Daily GOOG Stock Return (1 = 100 percent daily return)
            SP500_Return - Daily S&P 500 Index Return (1 = 100 percent daily return)
"""


def load_pandas():
    """Load the google_stock data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the google_stock data and returns a Dataset class.
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
    data = du.load_csv(__file__, 'google_stock_data.csv', sep=',')
    data = du.strip_column_names(data)
    return data
