@echo off
setlocal
for %%f in (*.frm) do @validate-frm.py -q %%f
for %%f in (*.par) do @validate-par.py -q %%f
for %%f in (*.ifs) do @validate-ifs.py -q %%f
for %%f in (*.l) do @validate-lsys.py -q %%f
