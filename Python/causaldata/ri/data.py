"""Simulated data from Causal Inference: The Mixtape"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Cunningham, S. 2021"""
TITLE = __doc__
SOURCE = """
Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. https://mixtape.scunning.com/index.html.
"""

DESCRSHORT = """A simple simulated data set for calculating p-values."""

DESCRLONG = """This simulated data allows for a quick and easy calculation of a p-value using randomization inference. This data is used in the Potential Outcomes Causal Model chapter of Causal Inference: The Mixtape by Cunningham."""

NOTE = """::
    Number of observations - 8
    Number of variables - 5
    Variables name definitions::
            name - Fictional Name
            d - Treatment
            y - Outcome
            y0 - Outcome if Untreated
            y1 - Outcome if Treated
"""


def load_pandas():
    """Load the ri data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the ri data and returns a Dataset class.
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
    filename = join(filepath,'ri.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
