"""Data from HIV information experiment in Thornton (2008)"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Thornton (2008)"""
TITLE = __doc__
SOURCE = """
Thornton, Rebecca L. 2008. 'The Demand for, and Impact of, Learning Hiv Status.' American Economic Review 98 (5): 1829–63.
"""

DESCRSHORT = """Data from an experiment about learning HIV test results."""

DESCRLONG = """This data comes from an experiment in Malawi looking at whether cash incentives could encourage people to learn the results of their HIV tests. This data is used in the Potential Outcomes Causal Model chapter of Causal Inference: The Mixtape by Cunningham."""

NOTE = """::
    Number of observations - 4820
    Number of variables - 7
    Variables name definitions::
            villnum - Village ID
            got - Got HIV results
            distvct - Distance in kilometers
            tinc - Total incentive
            any - Received any incentive
            age - Age
            hiv2004 - HIV results
"""


def load_pandas():
    """Load the thornton_hiv data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the thornton_hiv data and returns a Dataset class.
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
    filename = join(filepath,'thornton_hiv.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
