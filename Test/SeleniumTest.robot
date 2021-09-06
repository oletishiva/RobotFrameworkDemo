*** Settings ***
Library           SeleniumLibrary
Library           Collections
Resource          CartDetails.robot
Resource          CartItems.robot
Resource          SearchFunctionality.robot
Resource    BaseTest.robot


Test Setup  Start TestCase
Test Teardown  Finish TestCase

*** Test Cases ***

Select item and validate cart
    Search Product  TV
    Filter Product  ${44-55INCHES}
    Add First Item Into The Cart  ${FirstItemFromReturnList}
    Navigate Back To product Section
    Filter Product  ${32-43INCHES}
    Add First Item Into The Cart  ${FirstItemFromReturnList}
    Checkout Cart





