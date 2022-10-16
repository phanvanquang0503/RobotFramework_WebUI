*** Variables ***
${title}          //h1[@class='float-left']
${table}          //div[@class='card card-default']
${inputSearch}    //input[@id='SearchTitle']
${buttonSearch}   //button[@id="search-newsitem"]
${items}          //table[@id="newsitem-grid"]//tbody
${header}         (//div[@id="newsitem-grid_wrapper"]//table)[1]
${itemContent}   //table[@id="newsitem-grid"]//tbody//td[index]
#List header
@{HEADER_TABLE}   ${Item.HeaderItem.title}  ${Item.HeaderItem.language}  ${Item.HeaderItem.viewComments}  ${Item.HeaderItem.startDate}  ${Item.HeaderItem.endDate}  ${Item.HeaderItem.published}  ${Item.HeaderItem.createdOn}  ${Item.HeaderItem.edit}
