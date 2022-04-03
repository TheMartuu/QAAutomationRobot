*** Settings ***
Documentation   Test Cases in Firefox
...             by Martuu
Library         SeleniumLibrary

*** Variables ***
${browser}    firefox
${URL}      http://automationpractice.com/index.php

***Test Cases***
001 - FUNCIONALIDAD DEL BOTÓN 'Tops'
    Open Browser        ${URL}      ${browser}
    Wait Until Element is Visible       xpath=/html/body/div/div[1]/header/div[3]/div/div/div[1]/a/img
    Click Element       xpath=/html/body/div/div[1]/header/div[3]/div/div/div[6]/ul/li[1]/a
    Wait Until Element is Visible       xpath=/html/body/div/div[2]/div/div[3]/div[2]/div[2]/ul/li[1]/div[1]/a/img
    Click Element       xpath=/html/body/div/div[2]/div/div[3]/div[2]/div[2]/ul/li[1]/div[1]/a/img
    Set Focus To Element        xpath=/html/body/div/div[2]/div/div[3]/div[2]/ul/li[1]/div/div[2]/h5/a
    Set Focus To Element        xpath=/html/body/div/div[2]/div/div[3]/div[2]/ul/li[2]/div/div[2]/h5/a
    Close Browser


002 - FUNCIONALIDAD DEL BOTÓN 'Dresses'
    Open Browser        ${URL}      ${browser}
    Wait Until Element Is Visible       xpath=/html/body/div/div[1]/header/div[3]/div/div/div[1]/a/img
    Click Element       xpath=/html/body/div/div[1]/header/div[3]/div/div/div[6]/ul/li[1]/a
    Wait Until Element Is Visible       xpath=/html/body/div/div[2]/div/div[3]/div[2]/div[1]/div
    Click Element       xpath=/html/body/div/div[2]/div/div[3]/div[1]/div[1]/div/ul/li[2]/a
    Set Focus To Element        xpath=/html/body/div/div[2]/div/div[3]/div[2]/ul/li[1]/div/div[2]/h5/a
    Page Should Not Contain     css=html body#category.category.category-5.category-tshirts.hide-right-column.lang_en div#page div.columns-container div#columns.container div.row div#center_column.center_column.col-xs-12.col-sm-9 ul.product_list.grid.row li.ajax_block_product.col-xs-12.col-sm-6.col-md-4.first-in-line.last-line.first-item-of-tablet-line.first-item-of-mobile-line.last-mobile-line div.product-container div.right-block h5 a.product-name
    Close Browser

