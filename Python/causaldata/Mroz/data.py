"""U.S. Women's Labor-Force Participation"""

from statsmodels.datasets import utils as du

__docformat__ = 'restructuredtext'

COPYRIGHT = """Mroz, T. A. (1987)"""
TITLE = __doc__
SOURCE = """
Mroz, T. A. (1987) The sensitivity of an empirical model of married women's hours of work to economic and statistical assumptions. *Econometrica* 55, 765-799.

John Fox, Sanford Weisberg and Brad Price (2020). carData: Companion to Applied Regression Data Sets. R package version 3.0-4. https://CRAN.R-project.org/package=carData
"""

DESCRSHORT = """Data from Mroz (1987)"""

DESCRLONG = """The observations, from the Panel Study of Income Dynamics (PSID), are married women. This data set is a lightly edited version of the one found in the carData package in R. It is used in the Describing Relationships chapter of The Effect."""

NOTE = """::
    Number of observations - 753
    Number of variables - 8
    Variables name definitions::
            lfp - Labor-force participation
            k5 - Number of children 5 years old or younger
            k618 - Number of children 6 to 17 years old
            age - Age in years
            wc - Wife attended college
            hc - Husband attended college
            lwg - Log expected wage rate. For women in the labor force, the actual wage rate; for women not in the labor force, an imputed value based on the regression of lwg on the other variables.
            inc - Family income exclusive of wife's income
"""


def load_pandas():
    """Load the Mroz data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the Mroz data and returns a Dataset class.
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
    data = du.load_csv(__file__, 'Mroz.csv', sep=',')
    data['lfp'] = data['lfp'] == 'yes'
    data['wc'] = data['wc'] == 'yes'
    data['hc'] = data['hc'] == 'yes'
    data = du.strip_column_names(data)
    return data
