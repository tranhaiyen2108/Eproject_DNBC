var express = require("express");

var app = express();

const PORT = process.env.PORT || 5000;
app.listen(PORT,function () {
    console.log("Server is running..");
});

app.use(express.static('public'));

app.set("view engine","ejs");

var mssql = require("mssql");//goi module de su dung
const config = {
    server: "210.245.95.62",
    user: "sa",
    password: "z@GH7ytQ",
    database: "T1911E"
};
mssql.connect(config,function (err) {
    if (err) console.log(err);
});
var db = new mssql.Request();

app.get("/",function (req,res) {
    //headerfooter
    var sql_text = "SELECT * FROM DNBC_Categories WHERE CategoryID = 1;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 5;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 9;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 8;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 1;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 5;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 9;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 13;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 14;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 1002;";
    //body
    sql_text += "SELECT TOP 10 * FROM postclt WHERE CategoryID = 6 OR CategoryID = 7 ORDER BY PostDateTime DESC;";
    sql_text += "SELECT TOP 10 * FROM postclt WHERE CategoryID = 2 OR CategoryID = 3 OR CategoryID = 4 ORDER BY PostDateTime DESC;";
    sql_text += "SELECT TOP 10 * FROM postclt WHERE CategoryID = 8 ORDER BY PostDateTime DESC;";
    sql_text += "SELECT TOP 5 * FROM DNBC_Posts ORDER BY PostDateTime DESC;";
    db.query(sql_text,function (err,rows) {
        if(err) res.send(err);
        else {
            res.render("homepage",{
                business: rows.recordsets[0],
                politics: rows.recordsets[1],
                sport: rows.recordsets[2],
                tdiw: rows.recordsets[3],
                business1: rows.recordsets[4],
                politics1: rows.recordsets[5],
                sport1: rows.recordsets[6],
                abu: rows.recordsets[7],
                ctu: rows.recordsets[8],
                ad: rows.recordsets[9],

                politic_lastest: rows.recordsets[10],
                business_lastest: rows.recordsets[11],
                world_lastest: rows.recordsets[12],
                trending: rows.recordsets[13],
            })
        }
    });
});
app.get("/about-us",function (req,res) {
    //headerfooter
    var sql_text = "SELECT * FROM DNBC_Categories WHERE CategoryID = 1;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 5;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 9;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 8;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 1;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 5;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 9;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 13;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 14;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 1002;";
    db.query(sql_text,function (err,rows) {
        if(err) res.send(err);
        else {
            res.render("about-us",{
                business: rows.recordsets[0],
                politics: rows.recordsets[1],
                sport: rows.recordsets[2],
                tdiw: rows.recordsets[3],
                business1: rows.recordsets[4],
                politics1: rows.recordsets[5],
                sport1: rows.recordsets[6],
                abu: rows.recordsets[7],
                ctu: rows.recordsets[8],
                ad: rows.recordsets[9],


            })
        }
    });
});
app.get("/post",function (req,res) {
    //headerfooter
    var sql_text = "SELECT * FROM DNBC_Categories WHERE CategoryID = 1;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 5;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 9;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 8;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 1;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 5;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 9;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 13;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 14;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 1002;";
    db.query(sql_text,function (err,rows) {
        if(err) res.send(err);
        else {
            res.render("post",{
                business: rows.recordsets[0],
                politics: rows.recordsets[1],
                sport: rows.recordsets[2],
                tdiw: rows.recordsets[3],
                business1: rows.recordsets[4],
                politics1: rows.recordsets[5],
                sport1: rows.recordsets[6],
                abu: rows.recordsets[7],
                ctu: rows.recordsets[8],
                ad: rows.recordsets[9],


            })
        }
    });
});
app.get("/advertisement",function (req,res) {
    //headerfooter
    var sql_text = "SELECT * FROM DNBC_Categories WHERE CategoryID = 1;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 5;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 9;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 8;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 1;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 5;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 9;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 13;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 14;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 1002;";
    db.query(sql_text,function (err,rows) {
        if(err) res.send(err);
        else {
            res.render("advertisement",{
                business: rows.recordsets[0],
                politics: rows.recordsets[1],
                sport: rows.recordsets[2],
                tdiw: rows.recordsets[3],
                business1: rows.recordsets[4],
                politics1: rows.recordsets[5],
                sport1: rows.recordsets[6],
                abu: rows.recordsets[7],
                ctu: rows.recordsets[8],
                ad: rows.recordsets[9],

            })
        }
    });
});
app.get("/contactus",function (req,res) {
    //headerfooter
    var sql_text = "SELECT * FROM DNBC_Categories WHERE CategoryID = 1;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 5;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 9;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 8;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 1;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 5;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 9;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 13;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 14;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 1002;";
    db.query(sql_text,function (err,rows) {
        if(err) res.send(err);
        else {
            res.render("contactus",{
                business: rows.recordsets[0],
                politics: rows.recordsets[1],
                sport: rows.recordsets[2],
                tdiw: rows.recordsets[3],
                business1: rows.recordsets[4],
                politics1: rows.recordsets[5],
                sport1: rows.recordsets[6],
                abu: rows.recordsets[7],
                ctu: rows.recordsets[8],
                ad: rows.recordsets[9],


            })
        }
    });
});
app.get("/categories",function (req,res) {
    //headerfooter
    var id = req.params.CategoryID;
    var sql_text = "SELECT * FROM DNBC_Categories WHERE CategoryID = 1;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 5;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 9;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 8;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 1;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 5;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE ParentID = 9;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 13;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 14;";
    sql_text += "SELECT * FROM DNBC_Categories WHERE CategoryID = 1002;";
    db.query(sql_text,function (err,rows) {
        if(err) res.send(err);
        else {
            res.render("categories",{
                business: rows.recordsets[0],
                politics: rows.recordsets[1],
                sport: rows.recordsets[2],
                tdiw: rows.recordsets[3],
                business1: rows.recordsets[4],
                politics1: rows.recordsets[5],
                sport1: rows.recordsets[6],
                abu: rows.recordsets[7],
                ctu: rows.recordsets[8],
                ad: rows.recordsets[9],


            })
        }
    });
});
