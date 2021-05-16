"""Variable Documentation for National Health and Nutrition Examination Survey Data I Epidemiologic Follow-up Study"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """CDC"""
TITLE = __doc__
SOURCE = """
wwwn.cdc.gov/nchs/nhanes/nhefs/
"""

DESCRSHORT = """Variable Documentation for National Health and Nutrition Examination Survey Data I Epidemiologic Follow-up Study"""

DESCRLONG = """nhefs_codebook is the codebook for nhefs and nhefs_complete."""

NOTE = """::
    Number of observations - 64
    Number of variables - 2
    Variables name definitions::
            variable - The variable being described
            description - The variable description
"""


def load_pandas():
    """Load the nhefs_codebook data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the nhefs_codebook data and returns a Dataset class.
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
    filename = join(filepath,'nhefs_codebook.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
