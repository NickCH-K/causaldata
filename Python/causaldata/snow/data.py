"""Data from John Snow's 1855 study of the cause of cholera"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Thornton (2008)"""
TITLE = __doc__
SOURCE = """
Snow, John. 1855. 'On the Mode of Communication of Cholera'. John Churchill."
Coleman, Thomas. 2019. 'Causality in the time of cholera: John Snow as a prototype for causal inference.' SSRN 3262234."
"""

DESCRSHORT = """Data from John Snow's 1855 study of the cause of cholera"""

DESCRLONG = """A subset of the aggregated death rate data from Snow's legendary study of the source of the London Cholera outbreak. This data is used in the Difference-in-Differences chapter in The Effect by Huntington-Klein."""

NOTE = """::
    Number of observations - 4
    Number of variables - 4
    Variables name definitions::
            year - Year
            supplier - Water pump supplier
            treatment - Status of water pump
            deathrate - Deaths per 10k 1851 population
"""


def load_pandas():
    """Load the snow data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the snow data and returns a Dataset class.
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
    filename = join(filepath,'snow.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
