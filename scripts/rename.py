#!/bin/env python

import os, sys

for fname in os.listdir(sys.argv[1]):
	abs_path = os.path.abspath(sys.argv[1])
	new_name = abs_path + "/" + fname.lower().replace("(", "_").replace(")", "_").replace(" ", "_")
	os.rename(os.path.abspath(sys.argv[1]) + "/" + fname, new_name)
	print("renamed from: " + fname + "\nto: " + new_name)
