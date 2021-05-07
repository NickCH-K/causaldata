"""Data from Card (1995) to estimate the effect of college education on earnings"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Public domain"""
TITLE = __doc__
SOURCE = """
Card, David. 1995. “Aspects of Labour Economics: Essays in Honour of John Vanderkamp.” In. University of Toronto Press.
"""

DESCRSHORT = """Data from Card (1995) to estimate the effect of college education on earnings"""

DESCRLONG = """Data from the National Longitudinal Survey Young Men Cohort. This data is used to estimate the effect of college education on earnings, using the presence of a nearby (in-county) college as an instrument for college attendance. This data is used in the Instrumental Variables chapter of Causal Inference: The Mixtape by Cunningham."""

NOTE = """::
    Number of observations - 3010
    Number of variables - 8
    Variables name definitions::
            lwage - Log wages
            educ - Years of education
            exper - Years of work experience
            black - Race: Black
            south - In the southern United States
            married - Is married
            smsa - In a Standard Metropolitan Statistical Area (urban)
            nearc4 - There is a four-year college in the county
"""


def load_pandas():
    """Load the close_college data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the close_college data and returns a Dataset class.
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
    filename = join(filepath,'close_college.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
