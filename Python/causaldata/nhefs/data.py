"""Data from National Health and Nutrition Examination Survey Data I Epidemiologic Follow-up Study"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """CDC"""
TITLE = __doc__
SOURCE = """
wwwn.cdc.gov/nchs/nhanes/nhefs/
"""

DESCRSHORT = """Data from National Health and Nutrition Examination Survey Data I Epidemiologic Follow-up Study"""

DESCRLONG = """nhefs is a cleaned data set of the data used in Causal Inference by Hernán and Robins. nhefs is dataset containing data from the National Health and Nutrition Examination Survey Data I Epidemiologic Follow-up Study (NHEFS). The NHEFS was jointly initiated by the National Center for Health Statistics and the National Institute on Aging in collaboration with other agencies of the United States Public Health Service. A detailed description of the NHEFS, together with publicly available data sets and documentation, can be found at wwwn.cdc.gov/nchs/nhanes/nhefs/."""

NOTE = """::
    Number of observations - 1629
    Number of variables -67
    See the nhefs_codebook data set for variable documentation
"""


def load_pandas():
    """Load the nhefs data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the nhefs data and returns a Dataset class.
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
    filename = join(filepath,'nhefs.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
