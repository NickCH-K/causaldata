"""Simulated data from a job training program"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Cunningham (2021)"""
TITLE = __doc__
SOURCE = """
Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. https://mixtape.scunning.com/index.html.
"""

DESCRSHORT = """Simulated data from a job training program"""

DESCRLONG = """This simulated data, which is presented in the form of a full results, table, is used to demonstrate a matching procedure. This data is used in the Matching and Subclassification chapter of Causal Inference: The Mixtape by Cunningham."""

NOTE = """::
    Number of observations - 25
    Number of variables - 9
    Variables name definitions::
            unit_treat - Unit ID for treated observations
            age_treat - age for treated observations
            earnings_treat - earnings for treated observations
            unit_control - Unit ID for control observations
            age_control - age for control observations
            earnings_control - earnings for control observations
            unit_matched - Unit ID for matched controls
            age_matched - age for matched controls
            earnings_matched - earnings for matched controls
"""


def load_pandas():
    """Load the training_example data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the training_example data and returns a Dataset class.
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
    filename = join(filepath,'training_example.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
