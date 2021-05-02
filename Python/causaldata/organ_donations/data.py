"""Data from Kessler and Roth (2014)"""

from statsmodels.datasets import utils as du

__docformat__ = 'restructuredtext'

COPYRIGHT = """Kessler and Roth (2014)"""
TITLE = __doc__
SOURCE = """
Kessler, J.B. and Roth, A.E., 2014. Don't take 'no' for an answer: An experiment with actual organ donor registrations. National Bureau of Economic Research working paper No. 20378. https://www.nber.org/papers/w20378
"""

DESCRSHORT = """Data from Kessler and Roth (2014)"""

DESCRLONG = """The organ_donation data contains data from Kessler and Roth (2014) on organ donation rates by state and quarter. The state of California enacted an active-choice phrasing for their organ donation sign-up questoin in Q32011. The only states included in the data are California and those that can serve as valid controls; see Kessler and Roth (2014). This data set is used in the Difference-in-Differences chapter of The Effect."""

NOTE = """::
    Number of observations - 162
    Number of variables - 3
    Variables name definitions::
            bpl - Birth State
            State - The state, where California is the Treated group
            Quarter - Quarter of observation, in "Q"QYYYY format
            Rate - Organ donation rate
            Quarter_Num - Quarter of observation in numerical format. 1 = Quarter 4, 2010
"""


def load_pandas():
    """Load the organ_donations data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the organ_donations data and returns a Dataset class.
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
    data = du.load_csv(__file__, 'organ_donation.csv', sep=',')
    data = du.strip_column_names(data)
    data['Quarter_Num'] = 1
    data.loc[data['Quarter'] == 'Q12011', 'Quarter_Num'] = 2
    data.loc[data['Quarter'] == 'Q22011', 'Quarter_Num'] = 3
    data.loc[data['Quarter'] == 'Q32011', 'Quarter_Num'] = 4
    data.loc[data['Quarter'] == 'Q42011', 'Quarter_Num'] = 5
    data.loc[data['Quarter'] == 'Q12012', 'Quarter_Num'] = 6
    return data
