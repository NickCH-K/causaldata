"""Restaurant Inspection Data from Anchorage, Alaska"""

from statsmodels.datasets import utils as du

__docformat__ = 'restructuredtext'

COPYRIGHT = """?"""
TITLE = __doc__
SOURCE = """
Camus, Louis-Ashley. 2020. https://www.kaggle.com/loulouashley/inspection-score-restaurant-inspection
"""

DESCRSHORT = """Restaurant Inspection Data from Anchorage, Alaska"""

DESCRLONG = """The restaurant_inspections data contains data on restaurant health inspections performed in Anchorage, Alaska. This data set is used in the Regression chapter of The Effect."""

NOTE = """::
    Number of observations - 27178
    Number of variables - 5
    Variables name definitions::
            business_name - Name of restaurant/chain
            inspection_score - Health Inspection Score
            Year - Year of inspection
            NumberofLocations - Number of locations in restaurant chain
            Weekend - Was the inspection performed on a weekend?
"""


def load_pandas():
    """Load the restaurant_inspections data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the restaurant_inspections data and returns a Dataset class.
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
    data = du.load_csv(__file__, 'restaurant_data.csv', sep=',')
    data = du.strip_column_names(data)
    return data
