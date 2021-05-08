"""Data on avocado sales"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Hass avocado board"""
TITLE = __doc__
SOURCE = """
Kiggins, Justin. 2018. https://www.kaggle.com/neuromusic/avocado-prices/
"""

DESCRSHORT = """Data on avocado sales"""

DESCRLONG = """This data set includes information on the average price and total amount of avocados sold across 169 weeks from 2015 to 2018. This data covers only sales of 'conventional' avocados that take place in California. This data was used in the Identification chapter of The Effect by Huntington-Klein"""

NOTE = """::
    Number of observations - 169
    Number of variables - 3
    Variables name definitions::
            Date - Date of observation
            AveragePrice - Average avocado price
            TotalVolume - Total volume of avocados sold
"""


def load_pandas():
    """Load the avocado data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the avocado data and returns a Dataset class.
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
    filename = join(filepath,'avocado.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
