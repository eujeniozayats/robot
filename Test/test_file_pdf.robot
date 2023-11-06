*** Settings ***
Test Timeout      3 minutes
Library  Collections
Library    ../Data/Pdf_file.py

*** Variables ***
${PDF_FILE_FIRST}    ../Data/File/test_task.pdf
${PDF_FILE_SECOND}   ../Data/File/test_task.pdf


*** Test Cases ***
Verify PDF Structure
    Log To Console      Running Test Case: ${TEST NAME}
    ${dictionary_file_First}=  Extract pdf information "${PDF_FILE_FIRST}"
    log to console    ${dictionary_file_First}
    ${dictionary_file_Second}=  Extract pdf information "${PDF_FILE_SECOND}"
    log to console    ${dictionary_file_Second}
    dictionaries should be equal    ${dictionary_file_First}  ${dictionary_file_Second}
