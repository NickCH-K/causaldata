"""Data from the a close-elections regession discontinuity design"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Lee, Moretti, and Butler 2004"""
TITLE = __doc__
SOURCE = """
Lee, David S., Enrico Moretti, and Matthew J. Butler. 2004. “Do Voters Affect or Elect Policies: Evidence from the U.S. House.” Quarterly Journal of Economics 119 (3): 807–59.
"""

DESCRSHORT = """A close-elections regression discontinuity study from Lee, Moretti, and Butler (2004)"""

DESCRLONG = """This data comes from a close-elections regression discontinuity study from Lee, Moretti, and Butler (2004). The design is intended to test convergence and divergence in policy. Major effects of electing someone from a particular party on policy outcomes *in a close race* indicates that the victor does what they want. Small or null effects indicate that the electee moderates their position towards their nearly-split electorate. This data is used in the Regression Discontinuity chapter of Causal Inference: The Mixtape by Cunningham."""

NOTE = """::
    Number of observations - 13588
    Number of variables - 8
    Variables name definitions::
            state - ICPSR state code
            district - district code
            id - Election ID
            score - ADA voting score (higher = more liberal)
            year - Year of election
            demvoteshare - Democratic share of the vote
            democrat - Democratic victory
            lagdemocrat - Lagged Democratic victory
            lagdemvoteshare - Lagged democratic share of the vote
"""


def load_pandas():
    """Load the close_elections_lmb data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the close_elections_lmb data and returns a Dataset class.
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
    filename = join(filepath,'close_elections_lmb.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
