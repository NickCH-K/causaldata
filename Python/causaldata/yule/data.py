"""Data on 19th century English Poverty from Yule (1899)"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Public domain"""
TITLE = __doc__
SOURCE = """
Yule, G. Udny. 1899. 'An Investigation into the Causes of Changes in Pauperism in England, Chiefly During the Last Two Interensal Decades.' Journal of Royal Statistical Society 62: 249–95.
"""

DESCRSHORT = """Data on poverty and poverty relief in England in the 19th century."""

DESCRLONG = """This data allows for a look at the correlation between poverty relief and poverty rates in England in the 19th century. This data is used in the Potential Outcomes Causal Model chapter of Causal Inference: The Mixtape by Cunningham."""

NOTE = """::
    Number of observations - 32
    Number of variables - 5
    Variables name definitions::
            location - Location in England
            paup - Pauperism Growth
            outrelief - Poverty Relief Growth
            old - Annual growth in aged population
            pop - Annual growth in population
"""


def load_pandas():
    """Load the yule data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the yule data and returns a Dataset class.
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
    filename = join(filepath,'yule.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
