@echo off
cls


FOR /F "tokens=* delims=;" %%G IN (usuarios.csv) DO @echo %%G %%H