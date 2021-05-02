"""Data from 'Black Politicians are More Intrinsically Motivated to Advance Blacks' Interests'"""

from statsmodels.datasets import utils as du

__docformat__ = 'restructuredtext'

COPYRIGHT = """Broockman, D.E."""
TITLE = __doc__
SOURCE = """
Broockman, D.E., 2013. Black politicians are more intrinsically motivated to advance blacks' interests: A field experiment manipulating political incentives. American Journal of Political Science, 57(3), pp.521-536.
"""

DESCRSHORT = """The black_politicians data contains data from Broockman (2013)."""

DESCRLONG = """The black_politicians data contains data from Broockman (2013) on a field experiment where the author sent fictional emails purportedly sent by Black people to legislators in the United States. The experiment sought to determine whether the effect of the email being from "out-of-district" (someone who can't vote for you and so provides no extrinsic motivation to reply) would have a smaller effect on response rates for Black legislators than for non-Black ones, providing evidence of additional intrinsic motivation on the part of Black legislators to help Black people. This data was used in the Matching chapter of The Effect."""

NOTE = """::
    Number of observations - 5593
    Number of variables - 14
    Variables name definitions::
            leg_black - Legislator receiving email is Black
            treat_out - Email is from out-of-district
            responded - Legislator responded to email
            totalpop - District population
            medianhhincom - District median household income
            black_medianhh - District median household income among Black people
            white_medianhh - District median household income among White people
            blackpercent - Percentage of district that is Black
            statessquireindex - State's Squire index
            nonblacknonwhite - Legislator receiving email is neither Black nor White
            urbanpercent - Percentage of district that is urban
            leg_senator - Legislator receiving email is a senator
            leg_democrat - Legislator receiving email is in the Democratic party
            south - Legislator receiving email is in the Southern United States
"""


def load_pandas():
    """Load the anes96 data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the black_politicians data and returns a Dataset class.
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
    data = du.load_csv(__file__, 'black_politicians.csv', sep=',')
    data = du.strip_column_names(data)
    return data
