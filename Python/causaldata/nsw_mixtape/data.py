"""Data from the National Supported Work Demonstration (NSW) job-training program"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Lalonde 1986"""
TITLE = __doc__
SOURCE = """
Lalonde, Robert. 1986. “Evaluating the Econometric Evaluations of Training Programs with Experimental Data.” American Economic Review 76 (4): 604–20.
Dehejia, Rajeev, and Sadek Wahba. 1999. “Causal Effects in Nonexperimental Studies: Reevaluating the Evaluation of Training Programs.” Journal of the American Statistical Association 94 (448): 1053–62.
"""

DESCRSHORT = """Data from the National Supported Work Demonstration (NSW) job-training program"""

DESCRLONG = """Data from the National Supported Work Demonstration (NSW) job-training program experiment, where those treated were guaranteed a job for 9-18 months. This data is used in the Matching and Subclassification chapter of Causal Inference: The Mixtape by Cunningham."""

NOTE = """::
    Number of observations - 445
    Number of variables - 11
    Variables name definitions::
            data_id - Individual ID
            treat - In the National Supported Work Demonstration Job Training Program
            age - Age in years
            educ - Years of education
            black - Race: Black
            hisp - Ethnicity: Hispanic
            marr - Married
            nodegree - Has no degree
            re74 - Real earnings 1974 
            re75 - Real earnings 1975
            re78 - Real earnings 1978
"""


def load_pandas():
    """Load the nsw_mixtape data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the nsw_mixtape data and returns a Dataset class.
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
    filename = join(filepath,'nsw_mixtape.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
