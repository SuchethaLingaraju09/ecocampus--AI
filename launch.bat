@echo off
title EcoCampus AI - DSU Code Clash 2.0
echo ========================================================
echo  Starting EcoCampus AI Sustainability Command Center...
echo ========================================================
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0serve.ps1"
pause
