#!/bin/bash
set -uex

seqkit stats "${PWD}/corona/refs/batSARS-genomes.fa" "${PWD}/corona/refs/nCov-genomes.fa" "${PWD}/corona/refs/SARS-genomes.fa" -b
