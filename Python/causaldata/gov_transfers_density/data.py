"""Data from Manacorda, Miguel, and Vigorito (2011) for Density Testing"""

from statsmodels.datasets import utils as du

__docformat__ = 'restructuredtext'

COPYRIGHT = """Manacorda, M., Miguel, E. and Vigorito, A., 2011"""
TITLE = __doc__
SOURCE = """
Manacorda, M., Miguel, E. and Vigorito, A., 2011. Government transfers and political support. American Economic Journal: Applied Economics, 3(3), pp.1-28.
"""

DESCRSHORT = """Data from Manacorda, Miguel, and Vigorito (2011)"""

DESCRLONG = """The gov_transfers_density data contains data from Manacorda, Miguel, and Vigorito (2011) on government transfer program that was administered based on an income cutoff. As opposed to the gov_transfers data set, this data set only contains income information, but has a wider range of it, for use with density discontinuity tests. This data was used in the Regression Discontinuity chapter of The Effect."""

NOTE = """::
    Number of observations - 52549
    Number of variables - 1
    Variables name definitions::
            Income_Centered - Income measure, centered around program cutoff (negative value = eligible)
"""


def load_pandas():
    """Load the gov_transfers_density data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the gov_transfers_density data and returns a Dataset class.
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
    data = du.load_csv(__file__, 'Government_Transfers_McCrary.csv', sep=',')
    data = du.strip_column_names(data)
    return data
