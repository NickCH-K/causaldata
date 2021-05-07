"""Data from the College Scorecard"""

from statsmodels.datasets import utils as du
from pandas import read_stata
from os.path import dirname, abspath, join

__docformat__ = 'restructuredtext'

COPYRIGHT = """College Scorecard"""
TITLE = __doc__
SOURCE = """
Education Data Portal (Version 0.4.0 - Beta), Urban Institute, Center on Education Data and Policy, accessed June 28, 2019. https://educationdata.urban.org/documentation/, Scorecard.
"""

DESCRSHORT = """Data from the College Scorecard"""

DESCRLONG = """From the College Scorecard, this data set contains by-college-by-year data on how students who attended those colleges are doing. This data is not just limited to four-year colleges and includes a very wide variety of institutions. Note that the labor market (earnings, working) and repayment rate data do not refer to the same cohort of students, but rather are matched on the year in which outcomes are recorded. Labor market data refers to cohorts beginning college as undergraduates ten years prior, repayment rate data refers to cohorts entering repayment seven years prior. Institution names have been dropped from this file to save space, but are available in the version of this data in the R package. This data is used in the Describing Variables chapter in The Effect by Huntington-Klein."""

NOTE = """::
    Number of observations - 48445
    Number of variables - 8
    Variables name definitions::
            unitid - College identifiers
            inst_name - Name of the college or university
            state_abbr - Two-letter abbreviation for the state the college is in
            pred_degree_awarded_ipeds - Predominant degree awarded. 1 = less-than-two-year, 2 = two-year, 3 = four-year+}
            year - Year in which outcomes are measured
            earnings_med - Median earnings among students (a) who received federal financial aid, (b) who began as undergraduates at the institution ten years prior, (c) with positive yearly earnings
            count_not_working - Number of students who are (a) not working (not necessarily unemployed), (b) received federal financial aid, and (c) who began as undergraduates at the institution ten years prior
            count_working - Number of students who are (a) working, (b) who received federal financial aid, and (c) who began  as undergraduates at the institution ten years prior
"""


def load_pandas():
    """Load the scorecard data and returns a Dataset class.
    Returns
    -------
    Dataset
        See DATASET_PROPOSAL.txt for more information.
    """
    data = _get_data()
    return du.process_pandas(data, endog_idx=0)


def load(as_pandas=None):
    """Load the scorecard data and returns a Dataset class.
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
    filename = join(filepath,'scorecard.dta')
    data = read_stata(filename)
    data = du.strip_column_names(data)
    return data
