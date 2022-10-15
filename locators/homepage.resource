*** Variables ***
${HOME_PAGE.PAGE_TITLE.LABEL}  //h1[text()='Admin area demo']
${HOME_PAGE.TITLE.LABEL}  //strong[text()='Welcome, please sign in!']

${HOME_PAGE.EMAIL.LABEL}  //label[@for='Email']
${HOME_PAGE.EMAIL.INPUT}  //input[@class='email valid']

${HOME_PAGE.PASSWORD.LABEL}  //label[@for='Password']
${HOME_PAGE.PASSWORD.INPUT}  //input[@value='admin']

${HOME_PAGE.REMEMBER_ME.CHECKBOX}  //input[@type='checkbox']
${HOME_PAGE.REMEMBER_ME.LABEL}  //label[@for='RememberMe']

${BUTTON_LOGIN}  //button[@type='submit']
${contentManagerment}  (//*[@class='nav-item has-treeview'])[6]
${newItems}  //p[text()=' items']