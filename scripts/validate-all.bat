@echo off
setlocal
for %%f in (*.frm) do @validate-frm.py -q %%f
for %%f in (*.par) do @validate-par.py -q %%f
