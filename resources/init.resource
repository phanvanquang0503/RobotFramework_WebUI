*** Settings ***
#library
Library    SeleniumLibrary 
Library    BuiltIn
Library    String
Library    Collections

#resource
Resource    ${EXECDIR}/resources/common.resource
Resource    ${EXECDIR}/ui_test/searchpage.robot
Resource    ${EXECDIR}/locators/loginPage.resource
Resource    ${EXECDIR}/locators/homepage.resource
Resource    ${EXECDIR}/keywords/searchPage.resource
Resource    ${EXECDIR}/locators/searchPage.resource

#yaml files
Variables  ${EXECDIR}/keywords/setting.yaml