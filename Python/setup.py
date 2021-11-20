from setuptools import setup, find_packages

VERSION = '0.1.3' 
DESCRIPTION = 'Example Data Sets for Causal Inference'
LONG_DESCRIPTION = 'Example data sets for running code examples from causal inference textbooks. For now this includes data sets from The Effect by Huntington-Klein and Causal Inference: The Mixtape by Cunningham.'

# Setting up
setup(
        name="causaldata", 
        version=VERSION,
        author="Nick Huntington-Klein",
        author_email="nhuntington-klein@seattleu.edu",
        description=DESCRIPTION,
        long_description=LONG_DESCRIPTION,
        packages=find_packages(include = ['causaldata',
        'causaldata.*']),
        include_package_data = True,
        license="MIT license",
        install_requires=['statsmodels','pandas'],
        keywords=['python', 'causal inference', 'example data'],
        classifiers= [
            "Development Status :: 3 - Alpha",
            "Intended Audience :: Education",
            "Programming Language :: Python :: 2",
            "Programming Language :: Python :: 3",
            "Operating System :: MacOS :: MacOS X",
            "Operating System :: Microsoft :: Windows",
        ]
)

