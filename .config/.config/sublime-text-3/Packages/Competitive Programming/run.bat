:: Written by Ethan Toney for CS315 to test a compiled c++ program against all *.in files

@echo off
setlocal

echo Starting Testing...

SET found=0

for /r %2 %%g in ("*.in") do (
	echo ----- starting %%g -----

	SET found=1
	%1 < %%g

	echo ----- finished -----
)

IF %found% EQU 0 (
	echo ----- starting -----

	%1

	echo ----- finished -----
)

echo Ended Testing...

pause