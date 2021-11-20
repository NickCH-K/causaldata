"""Data on abortion legalization and sexually transmitted infections"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Cunningham and Cornwell"""
TITLE = __doc__
SOURCE = """
Cunningham, Scott, and Christopher Cornwell. 2013. “The Long-Run Effect of Abortion on Sexually Transmitted Infections.” American Law and Economics Review 15 (1): 381–407.
"""

DESCRSHORT = """Data on abortion legalization and sexually transmitted infections"""

DESCRLONG = """This data looks at the effect of abortion legalization on the incidence of gonnorhea among 15-19 year olds, as a measure of risky behavior. Treatment is whether abortion is legalized at the time that the eventual 15-19 year olds are born. This data is used in the Difference-in-Differences chapter of Causal Inference: The Mixtape by Cunningham."""

NOTE = """::
    Number of observations - 19584
    Number of variables - 22
    Variables name definitions::
            fip - State FIPS code
            age - Age in years
            race - Race: 1 = white, 2 = black
            year - Year
            t - Year but on a different scale
            sex - Sex: 1 = male, 2 = female
            totpop - Total population
            ir - Incarcerated Males per 100,000
            crack - Crack index
            alcohol - Alcohol consumption per capita
            income - Real income per capita
            ur - State unemployment rate
            poverty - Poverty rate
            repeal - In a state with an early repeal of abortion prohibition
            acc - AIDS mortality per 100,000 cumulative in t, t-1, t-2, t-3
            wht - White Indicator
            male - Male Indicator
            lnr - Logged gonnorhea cases per 100,000 in 15-19 year olds
            younger - From the younger group
            fa - State-younger interaction
            pi - Parental involvement law in effect
            bf15 - Is a black female in the 15-19 age group
"""


def load_pandas():
    """Load the abortion data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the abortion data and returns a Dataset class.
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
    filename = join(filepath,'abortion.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
