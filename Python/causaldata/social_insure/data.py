"""Data from Cai, De Janvry, and Sadoulet (2015)"""

from statsmodels.datasets import utils as du

__docformat__ = 'restructuredtext'

COPYRIGHT = """Cai, J., De Janvry, A. and Sadoulet, E., 2015."""
TITLE = __doc__
SOURCE = """
Cai, J., De Janvry, A. and Sadoulet, E., 2015. Social networks and the decision to insure. American Economic Journal: Applied Economics, 7(2), pp.81-108.
"""

DESCRSHORT = """Data from Cai, De Janvry, and Sadoulet (2015) on a social network experiment"""

DESCRLONG = """The social_insure data contains data from Jai, De Janvry, and Saoudlet (2015) on a two-round social network-based experiment on getting farmers to get insurance. See the paper for more details. This data is used in the Instrumental Variables chapter of The Effect."""

NOTE = """::
    Number of observations - 1410
    Number of variables - 13
    Variables name definitions::
            address - Natural village
            village - Administrative village
            takeup_survey - Whether farmer ended up purchasing insurance. (1 = yes)
            age - Household Characteristics - Age
            agpop - Household Characteristics - Household Size
            ricearea_2010 - Area of Rice Production
            disaster_prob - Perceived Probability of Disasters Next Year
            male - Household Caracteristics: Gender of Household Head (1 = male)
            default - "Default option" in experimental format assigned to. (1 = default is to buy, 0 = default is to not buy)
            intensive - Whether or not was assigned to "intensive" experimental session (1 = yes)
            risk_averse - Risk aversion measurement
            literacy - 1 = literate, 0 = illiterate
            pre_takeup_rate - Takeup rate prior to experiment
"""


def load_pandas():
    """Load the social_insure data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the social_insure data and returns a Dataset class.
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
    data = du.load_csv(__file__, 'Cai_2015.csv', sep=',')
    data = du.strip_column_names(data)
    return data
