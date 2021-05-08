"""Data from a survey of internet-mediated sex workers"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Cunningham and Kendall"""
TITLE = __doc__
SOURCE = """
Cunningham, Scott, and Todd D. Kendall. 2011. “Prostitution 2.0: The Changing Face of Sex Work.” Journal of Urban Economics 69: 273–87.
Cunningham, Scott, and Todd D. Kendall. 2014. “Examining the Role of Client Reviews and Reputation Within Online Prostitution.” In, edited by Scott Cunningham and Manisha Shah. Vol. Handbook on the Economics of Prostitution. Oxford University Press.
Cunningham, Scott, and Todd D. Kendall. 2016. “Prostitution Labor Supply and Education.” Review of Economics of the Household. Forthcoming.
"""

DESCRSHORT = """Data from a survey of internet-mediated sex workers"""

DESCRLONG = """This data comes from a survey of 700 internet-mediated sex workers in 2008 and 2009, asking the same sex workers standard labor market information over several time periods. This data is used in the Panel Data chapter of Causal Inference: The Mixtape by Cunningham."""

NOTE = """::
    Number of observations - 1787
    Number of variables - 31
    Variables name definitions::
            id - Provider identifier
            session - Client session identifier
            age - Age of provider
            age_cl - Age of Client
            appearance_cl - Client Attractiveness (Scale of 1 to 10)
            bmi - Body Mass Index
            schooling - Imputed Years of Schooling
            asq_cl - Age of Client Squared
            provider_second - Second Provider Involved
            asian_cl - Asian Client
            black_cl - Black Client
            hispanic_cl - Hispanic Client
            othrace_cl - Other Ethnicity Client
            reg - Client was a Regular
            hot - Met Client in Hotel
            massage_cl - Gave Client a Massage
            lnw - Log of Hourly Wage
            llength - Ln(Length)
            unsafe - Unprotected sex with client of any kind
            asian - race==1. Asian
            black - race==2. Black
            hispanic - race==3. Hispanic
            other - race==4. Other
            white - race==5. White
            asq - Age of provider squared
            cohab - ms==Cohabitating (living with a partner) but unmarried
            married - ms==Currently married and living with your spouse
            divorced - ms==Divorced and not remarried
            separated - ms==Married but not currently living with your spouse
            nevermarried - ms==Single and never married
            widowed - ms==Widowed and not remarried
"""


def load_pandas():
    """Load the adult_services data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the adult_services data and returns a Dataset class.
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
    filename = join(filepath,'adult_services.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
