"""Data on Taiwanese Credit Card Holders"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """UCI Machine Learning Repository"""
TITLE = __doc__
SOURCE = """
Lichman, Moshe. 2013. UCI Machine Learning Repository.
"""

DESCRSHORT = """Data on castle-doctrine statutes and violent crime"""

DESCRLONG = """Data from the UCI Machine Learning Repository on Taiwanese credit card holders, the amount of their credit card bill, and whether their payment was late. This data is used in the Matching chapter of The Effect by Huntington-Klein."""

NOTE = """::
    Number of observations - 30000
    Number of variables - 4
    Variables name definitions::
            LateSept - Credit card payment is late in Sept 2005
            LateApril - Credit card payment is late in April 2005
            BillApril - Total bill in April 2005 in thousands of New Taiwan Dollars
            AGE - Age of card-holder
"""


def load_pandas():
    """Load the credit_cards data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the credit_cards data and returns a Dataset class.
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
    filepath = dirname(abspath(__file__))
    filename = join(filepath,'credit_cards.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
