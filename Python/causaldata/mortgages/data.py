"""Data from Fetter (2013)"""

from statsmodels.datasets import utils as du

__docformat__ = 'restructuredtext'

COPYRIGHT = """Fetter, D.K., 2013"""
TITLE = __doc__
SOURCE = """
Fetter, D.K., 2013. How do mortgage subsidies affect home ownership? Evidence from the mid-century GI bills. American Economic Journal: Economic Policy, 5(2), pp.111-47.
"""

DESCRSHORT = """Data from Fetter (2013)"""

DESCRLONG = """The mortgages data contains data from Fetter (2015) on home ownership rates by men, focusing on whether they were born at the right time to be eligible for mortgage subsidies based on their military service. This data was used in the Regression Discontinuity chapter of The Effect."""

NOTE = """::
    Number of observations - 214144
    Number of variables - 6
    Variables name definitions::
            bpl - Birth State
            qob - Quarter of birth
            nonwhite - White/nonwhite race indicator. 1 = Nonwhite
            vet_wwko - Veteran of either the Korean war or World War II
            home_ownership - Owns a home
            qob_minus_kw - Quarter of birth centered on eligibility for mortgage subsidy (0+ = eligible)
"""


def load_pandas():
    """Load the mortgages data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the mortgages data and returns a Dataset class.
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
    data = du.load_csv(__file__, 'fetter_mortgages.csv', sep=',')
    data = du.strip_column_names(data)
    return data
