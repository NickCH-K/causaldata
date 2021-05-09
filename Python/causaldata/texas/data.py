"""Data on prison capacity expansion in Texas"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Cunningham and Kang"""
TITLE = __doc__
SOURCE = """
Cunningham and Kang. 2019. “Studying the Effect of Incarceration Shocks to Drug Markets.” Unpublished manuscript. http://www.scunning.com/files/mass_incarceration_and_drug_abuse.pdf
"""

DESCRSHORT = """Data on prison capacity expansion in Texas"""

DESCRLONG = """This data looks at the massive expansion in prison capacity in Texas that occurred in 1993 under Governor Ann Richards, and the effect of that expansion on the number of Black men in prison. This data is used in the Synthetic Control chapter of Causal Inference: The Mixtape by Cunningham."""

NOTE = """::
    Number of observations - 816
    Number of variables - 12
    Variables name definitions::
            statefip - State FIPS code
            year - Year
            bmprison - Number of Black men in prison
            wmprison - Number of White men in prison
            alcohol - Alcohol consumption per capita
            income - Median income
            ur - Unemployment rate
            poverty - Poverty rate
            black - Percentage of the population that is Black
            perc1519 - Percentage of the population that is age 15-19
            aidscapita - AIDS mortality per 100,000 in t
            state - State name
"""


def load_pandas():
    """Load the texas data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the texas data and returns a Dataset class.
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
    filename = join(filepath,'texas.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
