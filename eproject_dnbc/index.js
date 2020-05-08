var express = require("express");

var app = express();

const PORT = process.env.PORT || 5000;
app.listen(PORT,function () {
    console.log("Server is running..");
});

app.use(express.static('public'));

app.set("view engine","ejs");
// var mssql = require("mssql");//goi module de su dung
// const config = {
//     server: "210.245.95.62",
//     user: "sa",
//     password: "z@GH7ytQ",
//     database: "T1911E"
// };
// mssql.connect(config,function (err) {
//     if (err) console.log(err);
// });
// var db = new mssql.Request();

app.get("/",function (req,res) {
    res.render("homepage");
});
app.get("/about-us",function (req,res) {
    res.render("about-us");
});
app.get("/file-mau",function (req,res) {
    res.render("file-mau");
});
app.get("/advertisement",function (req,res) {
    res.render("advertisement");
});
app.get("/contactus",function (req,res) {
    res.render("contactus");
});
app.get("/categories",function (req,res) {
    res.render("categories");
});