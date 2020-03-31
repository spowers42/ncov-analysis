#!/bin/bash
# Assumes that Anaconda is properly setup.
conda config --add channels bioconda
conda config --add channels conda-forge
curl http://data.biostarhandbook.com/install/conda.txt | xargs conda install -y
conda install -y biopython pyaml pysam pandas
pip install --upgrade BiostarHandbook
pip install codebraid
apt install cd-hit
apt install datamash
conda install -c bioconda taxonkit
wget -qO- ftp://ftp.ncbi.nih.gov/pub/taxonomy/taxdump.tar.gz  | tar xvz - -C $HOME/.taxonkit
pip install streamlit
