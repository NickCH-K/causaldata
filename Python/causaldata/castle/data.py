"""Data on castle-doctrine statutes and violent crime"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Federal Bureau of Investigation"""
TITLE = __doc__
SOURCE = """
Cheng, Cheng, and Mark Hoekstra. 2013. “Does Strengthening Self-Defense Law Deter Crime or Escalate Violence? Evidence from Expansions to Castle Doctrine.” Journal of Human Resources 48 (3): 821–54.
"""

DESCRSHORT = """Data on castle-doctrine statutes and violent crime"""

DESCRLONG = """This data looks at the impact of castle-doctrine statutes on violent crime. Data from the FBI Uniform Crime Reports Summary files are combined with information on castle-doctrine/stand-your-ground law impementation in different states. This data is used in the Difference-in-Differences chapter of Causal Inference: The Mixtape by Cunningham."""

NOTE = """::
    Number of observations - 550
    Number of variables - 139
    Variables name definitions::
            year - Year
            post - Post-treatment indicator
            sid - state id
            robbery_gun_r - Region-quarter fixed effects
            jhcitizen_c - justifiable homicide by private citizen count
            jhpolice_c - justifiable homicide by police count
            homicide - homicide count per 100,000 state population
            robbery - Region-quarter fixed effects
            assault - aggravated assault count per 100,000 state population
            burglary - burglary count per 100,000 state population
            larceny - larceny count per 100,000 state population
            motor - motor vehicle theft count per 100,000 state population
            murder - murder count per 100,000 state population
            unemployrt - unemployment rate
            blackm_15_24 - % of black male aged 15-24
            whitem_15_24 - % of white male aged 15-24
            blackm_25_44 - % of black male aged 25-44
            whitem_25_44 - % of white male aged 25-44
            poverty - poverty rate
            r20001 through r20104 - Region-quarter fixed effects
            trend_1 through trend_51 - State linear time trends
            l_homicide - Logged crime rate
            l_larceny - Logged crime rate
            l_motor - Logged crime rate
            l_police - Logged police presence
            l_income - Logged income
            l_prisoner - Logged number of prisoners
            l_lagprisoner - Lagged log prisoners
            l_exp_subsidy - Logged subsidy spending
            l_exp_pubwelfare - Logged public welfare spending
            lead1 through lead9 and lag0 through lag5 - Indicators of how many time periods until/since treatment
            popwt - Population weight
"""


def load_pandas():
    """Load the castle data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the castle data and returns a Dataset class.
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
    filename = join(filepath,'castle.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
