"""Simulated data from a job training program for a bias reduction method"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Public domain"""
TITLE = __doc__
SOURCE = """
Cunningham. 2021. Causal Inference: The Mixtape. Yale Press. https://mixtape.scunning.com/index.html.
"""

DESCRSHORT = """Simulated data from a job training program"""

DESCRLONG = """This simulated data is used to demonstrate the bias-reduction method in matching as per Abadie and Imbens (2011). This data is used in the Matching and Subclassification chapter of Causal Inference: The Mixtape by Cunningham."""

NOTE = """::
    Number of observations - 8
    Number of variables - 4
    Variables name definitions::
            Unit - Unit ID
            Y - Outcome
            D - Treatment
            X - Matching variable
"""


def load_pandas():
    """Load the training_bias_reduction data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the training_bias_reduction data and returns a Dataset class.
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
    filename = join(filepath,'training_bias_reduction.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
