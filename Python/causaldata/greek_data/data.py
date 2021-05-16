"""Data from a fictional randomized heart transplant study"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """Hernán and Robins"""
TITLE = __doc__
SOURCE = """
Hernán and Robins. Causal Inference. https://www.hsph.harvard.edu/miguel-hernan/causal-inference-book/
"""

DESCRSHORT = """Data from a fictional randomized heart transplant study"""

DESCRLONG = """greek_data is a fictional data set from Table 2.2 in Chapter 2 of Causal Inference by Hernán and Robins. From the book: 'Table 2.2 shows the data from our heart transplant randomized study. Besides data on treatment A (1 if the individual received a transplant, 0 otherwise) and outcome Y (1 if the individual died, 0 otherwise), Table 2.2 also contains data on the prognostic factor L (1 if the individual was in critical condition, 0 otherwise), which we measured before treatment was assigned.'"""

NOTE = """::
    Number of observations - 20
    Number of variables - 4
    Variables name definitions::
                name - The name of a Greek god
                l - A prognostic factor
                a - The treatment, a heart transplant
                y - The outcome, death
"""


def load_pandas():
    """Load the greek_data data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the greek_data data and returns a Dataset class.
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
    filename = join(filepath,'greek_data.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
