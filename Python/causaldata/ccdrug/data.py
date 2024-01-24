"""Data on drug arrests in England and Wales from 2012 through 2015"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Crown Court"""
TITLE = __doc__
SOURCE = """
Cheng, Cheng, and Mark Hoekstra. 2013. “Does Strengthening Self-Defense Law Deter Crime or Escalate Violence? Evidence from Expansions to Castle Doctrine.” Journal of Human Resources 48 (3): 821–54.
Pina Sanchez, J., & Harris, L., 2020. “Sentencing gender? Investigating the presence of gender disparities in Crown Court sentences.” Criminal Law Review 2020 (1): 3-28.
"""

DESCRSHORT = """Data on drug arrests in England and Wales from 2012 through 2015"""

DESCRLONG = """This data looks at differential sentencing rates for men and women committing drug offenses between 2012 and 2015 in the Crown Court Sentencing Survey, allowing for a set of controls for features that should impact sentencing. This data is used in the Partial Identification chapter of The Effect by Huntington-Klein."""

NOTE = """::
    Number of observations - 16973
    Number of variables - 45
    Variables name definitions:
            custody - Taken in to custody.
            male - Is a male
            first_offense - This is the first offense
            age - Age in ten-year bins
            offense - Offense type
            prev_convictions - Previous convictions, in bins of None, 1-3, 4-9, or 10+
            drg_class - Type of drug
            drg_culpability - Level of culpability for crime
            drg_increasing_x, drg_reducing_x - A set of indicators that should increase or reduce the likelihood of being taken into custody. See variable labels for specific definitions.
            popwt - Population weight
"""


def load_pandas():
    """Load the ccdrug data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the ccdrug data and returns a Dataset class.
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
    filename = join(filepath,'ccdrug.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
