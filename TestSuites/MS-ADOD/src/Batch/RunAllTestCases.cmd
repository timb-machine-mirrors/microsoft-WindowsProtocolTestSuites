:: Copyright (c) Microsoft. All rights reserved.
:: Licensed under the MIT license. See LICENSE file in the project root for full license information.

@echo off

echo ==========================================================================
echo          Start to run RunAllTestCases test cases
echo ==========================================================================

set CurrentPath=%~dp0
call "%CurrentPath%setVsTestPath.cmd"
if ErrorLevel 1 (
	exit /b 1
)

%vstest% "..\Bin\MS-ADOD_ODTestSuite.dll" /Settings:..\Bin\ODLocalTestRun.testrunconfig /Logger:trx
pause