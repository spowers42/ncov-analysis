from Bio import SeqIO
import pandas as pd


def fasta_to_dataframe(filename, label=None):
  fasta_data = SeqIO.parse(filename, 'fasta')
  data = []
  for record in fasta_data:
    row = {'sequence': str(record.seq), 
           'id': record.id,
           'description': record.description,
          }
    data.append(row)
  df = pd.DataFrame(data)
  if label is not None:
    df['label'] = label
  return df
