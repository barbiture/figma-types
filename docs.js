let fs = require("fs");

let txt = fs.readFileSync("docs.txt", "utf8").toString();
console.log(JSON.stringify(txt));
