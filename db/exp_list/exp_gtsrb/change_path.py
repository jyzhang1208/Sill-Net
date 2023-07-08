import os
import pdb


filepath = 'val_unseen_impaths.txt'
outpath = 'val_unseen_impaths2.txt'

with open(filepath,'r') as f:
	paths = f.readlines()
	paths = ['GTSRB/'+path for path in paths]


with open(outpath,'w') as f:
	for path in paths:
		f.write(path)


