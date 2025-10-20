*** Settings ***
Library    OperatingSystem
Library    Process
Library    Telnet    prompt=$    default_log_level=DEBUG

*** Test Cases ***
Test With Positional Arguments
    Create Dictionary    ${TEMPDIR}/stuff    trang
    Log    ${CURDIR}
    Copy File    ${CURDIR}/01_basic_syntax.robot    ${TEMPDIR}/01_basic_syntax.robot
    No Operation

Test With Default Value
    Create File    ${TEMPDIR}/empty.py
    Create File    ${TEMPDIR}/utf-8.txt    Hyvä esimerkki
    Create File    ${TEMPDIR}/iso-8859-1.txt    Hyvä esimerkki    ISO-8859-1
# Note: After arugments with default value can't have positional arguments

Test with variable number of arguments
    Create File    ${TEMPDIR}/file1.txt    Content for file 1
    Create File    ${TEMPDIR}/file2.txt    Content for file 2
    Create File    ${TEMPDIR}/file3.txt    Content for file 3
    Remove Files    ${TEMPDIR}/file1.txt    ${TEMPDIR}/file2.txt    ${TEMPDIR}/file3.txt

Test with variable number of keyword arguments
    Remove Files    ${TEMPDIR}/f1.txt    ${TEMPDIR}/f2.txt    ${TEMPDIR}/f3.txt
    ${path}=    Join Paths    ${TEMPDIR}    f1.txt    f2.txt    f3.txt

Test Wih Named Arguments
    Create Directory    ${TEMPDIR}/mydir
    Log    Directory created at ${TEMPDIR}/mydir

Test Free named Arguments
    Run Process    program.py    arg1    arg2    cwd=/home/user
    Run Process    program.py    argument    shell=True    env=${ENVIRON}

# Test Named arguments with variables
    # Run Program    shell=True    # This will not come as a named argument to Run Process

# Named arguments example
    # Open connection    172.22.0.1    port=8888    alias=example



*** Keywords ***
Run Program
    [Arguments]    @{args}
    Run Process    program.py    @{args}
    Log   Running program with arguments: ${args}
    # Đối số theo tên (named arguments) không thể nhận diện được từ khóa khi nó ẩn trong variable arguments. (cách robot framework xử lý)