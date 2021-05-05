"""Data from the sinking of the Titanic"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Public domain"""
TITLE = __doc__
SOURCE = """
British Board of Trade (1990), Report on the Loss of the ‘Titanic’ (S.S.). British Board of Trade Inquiry Report (reprint). Gloucester, UK: Allan Sutton Publishing.
"""

DESCRSHORT = """Data from the sinking of the Titanic"""

DESCRLONG = """This data comes from the sinking of the Titanic, and can be used to look at survival by different demographic characteristics. This data is used in the Matching and Subclassification chapter of Causal Inference: The Mixtape by Cunningham."""

NOTE = """::
    Number of observations - 2201
    Number of variables - 4
    Variables name definitions::
            class - Class (ticket)
            age - Child vs. adult
            sex - Gender (0 = woman, 1 = man)
            survived - Survived the sinking
"""


def load_pandas():
    """Load the titanic data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the titanic data and returns a Dataset class.
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
    filename = join(filepath,'titanic.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
