@echo off

:: To dynamically use a variable in a FOR loop i.e. expand variable at execution time
setlocal EnableDelayedExpansion

:: Set initial suffix value
set suffix=100

:: executed in current filepath

for /F "delims=" %%i IN ('dir /B *.txt') do (

:: increment sequence
	set /A suffix+=1

:: rename file (~ni takes filename without extension, !suffix! denotes delayed expansion variable)
	ren "%%i" "%%~ni_!suffix!.txt"
)
