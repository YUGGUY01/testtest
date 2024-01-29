*** Settings ***
Documentation     This is a test 
Library           SeleniumLibrary
Suite Setup       Open Browser   http://automationexercise.com  chrome



*** Variables ***
${email}         65022319@up.ac.th  
${name}          KORNKANOK   
${lastName}      G.
${password}      Guy0654398245
${signin}        SignIn
${Title}         Mrs.
${days}          15
${Month}         september
${Year}          2003

${FirstName}     KORNKANOK
${LastName}      G
${Company}       -
${Address}       THAILAND
${Address2}      THAI
${Country}       Singapore
${State}         -
${city}          -
${Zipcode}       -
${MobileNumber}  0654398245
 

*** Keywords ***

Click SignIn/Login button 
    Click Element        //*[@id="header"]/div/div/div/div[2]/div/ul/li[4] 

Input NAME
  [Arguments]  ${FirstName} 
  Input Text  //*[@id="form"]/div/div/div[3]/div/form/input[2]  ${FirstName} 
Input EMAIL
  [Arguments]  ${email} 
  Input Text  //*[@id="form"]/div/div/div[3]/div/form/input[3]  ${email} 

Click SignIn
    Click Element        //*[@id="form"]/div/div/div[3]/div/form/button

Select Title 
  ${Title} Select Radio Button     //*[@id="form"]/div/div/div/div[1]/form/div[1]    # robotcode: ignore

Input namee
  [Arguments]  ${name} 
  Input Text   //*[@id="name"]  ${name}

Input emaill
  [Arguments]  ${email} 
  Input Text  //*[@id="email"]  ${email}

Input password
  [Arguments]  ${password} 
  Input Text  //*[@id="password"]  ${password}

Select Days 
    Select All From List  //*[@id="days"]   
Select Month
    Select All From List  //*[@id="months"]

Select Year 
    Select All From List  //*[@id="years"]  
Checked Checkbox
    Click Element       //*[@id="form"]/div/div/div/div[1]/form/div[6]
Checked Check
    Click Element       //*[@id="form"]/div/div/div/div[1]/form/div[7]

Input First
  [Arguments]  ${FirstName} 
  Input Text  //*[@id="first_name"]  ${FirstName}

Input Last
  [Arguments]  ${LastName} 
  Input Text  //*[@id="last_name"]  ${LastName}

Input company
  [Arguments]  ${Company} 
  Input Text  //*[@id="company"]  ${Company}

Input Address
  [Arguments]  ${Address} 
  Input Text  //*[@id="Address1"]  ${Address}

Input Address2
  [Arguments]  ${Address2} 
  Input Text  //*[@id="Address2"]  ${Address2}


Select Country 
    Select All From List  //*[@id="country"]  

Input State
  [Arguments]  ${State} 
  Input Text  //*[@id="state"]  ${State}

Input city
  [Arguments]  ${city} 
  Input Text  //*[@id="city"]  ${city}

Input Zipcode
  [Arguments]  ${Zipcode} 
  Input Text  //*[@id="zipcode"]  ${Zipcode}

Input MobileNumber
  [Arguments]  ${MobileNumber} 
  Input Text  //*[@id="mobile_number"]  ${MobileNumber}

Click Creat
    Click Element       //*[@id="form"]/div/div/div/div[1]/form/button
    
Click Continue
    Click Button        //*[@id="form"]/div/div/div/div/a

Click Delete
    Click Button        //*[@id="header"]/div/div/div/div[2]/div/ul/li[5]/a

Click Continue2
    Click Button        //*[@id="form"]/div/div/div/div/a





*** Test Cases ***
Register with valid info
   [Documentation]    Test 
   Click SignIn/Login button   
   
   Input NAME                 ${FirstName}
   Input Email                  ${email}
   Click SignIn
   Select Title  
   Input namee              ${name}
   Input emaill            ${email}
   Input password           ${password}
   Select Days                 
   Select Month                
   Select Year                
   Checked Check
   Input First            ${FirstName}
   Input last              ${lastName}
   Input company              ${Company}
   Input Address              ${Address}
   Input Address2            ${Address2}
   Select Country
   Input State             ${State}
   Input city             ${city}
   Input Zipcode            ${Zipcode}
   Input MobileNumber             ${MobileNumber}


   Click Creat
   Click Continue
   Click Delete
   Click Continue2



 