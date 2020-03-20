#!/bin/bash
set -uex

for collection in "nCov-genomes" "SARS-genomes" "batSARS-genomes"; do
	echo $collection
  cd-hit -c 0.7 -i "${PWD}/corona/refs/${collection}.fa" -o "${PWD}/tmp/cluster_out_${collection}"
  cat "${PWD}/tmp/cluster_out_${collection}.clstr" | grep at | awk ' {print $5} ' | tr -d % | tr -d '/' > "$PWD/tmp/similarity_${collection}"
done
