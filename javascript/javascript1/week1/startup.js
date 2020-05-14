const firstWords=["success", "high", "low", "profits",
 "memo", "cut", "cost", "current", "best", "great"];
const secondWords=["firm", "marketing", "deals", "finance", "venture", 
"press", "commercial", "income", "expenditure", "accounts" ];

const randomNumber = Math.floor(Math.random() * 10) + 0;

const startupName=firstWords[randomNumber]+ ' ' +secondWords[randomNumber];
const length=firstWords[randomNumber].length +secondWords[randomNumber].length;

console.log(' statrtup name ' + startupName +' is with ' +' ' + length +' characers');