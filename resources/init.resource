*** Settings ***
Library    SeleniumLibrary 
Library    BuiltIn
Library    String
Library    Collections

#resource
Resource    ${EXECDIR}/resources/common.resource
Resource    ${EXECDIR}/locators/loginPage.resource
Resource    ${EXECDIR}/locators/homepage.resource
Resource    ${EXECDIR}/locators/searchPage.resource
Resource    ${EXECDIR}/keywords/searchPage.resource
Resource    ${EXECDIR}/locators/searchPage.resource

#yaml files
Variables  ${EXECDIR}/resources/setting.yaml
Variables  ${EXECDIR}/resources/testData/dataSearch.yaml
