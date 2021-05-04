"""Data on Automobiles from Stata"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Chambers, J. M., W. S. Cleveland, B. Kleiner, and P. A. Tukey. 1983"""
TITLE = __doc__
SOURCE = """
Chambers, J. M., W. S. Cleveland, B. Kleiner, and P. A. Tukey. 1983. Graphical Methods for Data Analysis. Belmont, CA: Wadsworth.
"""

DESCRSHORT = """Default Stata data set on automobiles."""

DESCRLONG = """his data, which comes standard in Stata, originally came from the April 1979 issue of Consumer Reports and from the United States Government EPA statistics on fuel consumption; they were compiled and published by Chambers et al. (1983). This data is used in the Probability and Regression Review chapter of Causal Inference: The Mixtape."""

NOTE = """::
    Number of observations - 74
    Number of variables - 12
    Variables name definitions::
            make - Make and Model
            price - Price
            mpg - Mileage (mpg)
            rep78 - Repair Record 1978
            headroom - Headroom (in.)
            trunk - Trunk space (cu. ft.)
            weight - Weight (lbs.)
            length - Length (in.)
            turn - Turn Circle (ft.)
            displacement - Displacement (cu. in.)
            gear_ratio - Gear Ratio
            foreign - Car type; 0 = Domestic, 1 = Foreign
"""


def load_pandas():
    """Load the auto data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the auto data and returns a Dataset class.
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
    filename = join(filepath,'auto.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
