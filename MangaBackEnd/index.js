/*
Restful API
author : ShrayGlitch
Update : 29/06/2021
*/
var express = require('express');
var mysql = require('mysql');
var bodyParser = require('body-parser');

// connect to mysql
var con = mysql.createConnection({
  host : 'localhost',
  user : 'root',
  password : '', // default in xampp is blank
  database : 'testmanga'
});

require('events').EventEmitter.defaultMaxListeners=20;  // Fix Memory Leak

//make restful
var app = express();
var publicDir = (__dirname + '/public/');
app.use(express.static(publicDir));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended : true}));


// MIDDLEWARE
// const foo1 = (req, res, next) => {
//   req.mydata = "tyagi"
//   next();
// }
// const foo2 = (req, res, next) => {
//   req.mydata += "loves"
//   next();
// }
// const foo3 = (req, res, next) => {
//   req.mydata += "gluten"
//   next();
// }
// app.get("/xyz", foo1, foo2, foo3,(req, res) => {
//   console.log(req.mydata);
//   res.end(req.mydata);
// })

// app.get("/banner/:id", (req,res,next)=>{
//   res.send("with id"+req.params.id)
// });

//GET ALL BANNER
app.get("/banner", (req,res,next)=>{
  con.query('SELECT * FROM banner', function(error,result,fields){
    con.on('error',function(err){
      console.log('[MY SQL ERROR]',err);
    });
    if(result && result.length)
    {
      res.end(JSON.stringify(result));
    }
    else
    {
      res.end(JSON.stringify("NO COMIC HERE"));
    }
  })
});

//GET ALL COMICS
app.get("/comic", (req,res,next)=>{
  con.query('SELECT * FROM MANGA', function(error,result,fields){
    con.on('error',function(err){
      console.log('[MY SQL ERROR]',err);
    });
    if(result && result.length)
    {
      res.end(JSON.stringify(result));
    }
    else
    {
      res.end(JSON.stringify("NO COMIC HERE"));
    }
  })
});


//GET CHAPTER BY MANGA ID
app.get("/chapter/:mangaid", (req,res,next)=>{
  con.query('SELECT * FROM chapter where MangaId=?',[req.params.mangaid], function(error,result,fields){
    con.on('error',function(err){
      console.log('[MY SQL ERROR]',err);
    });
    if(result && result.length)
    {
      res.end(JSON.stringify(result));
    }
    else
    {
      res.end(JSON.stringify("NO CHAPTER HERE"));
    }
  })
});


//GET IMGAES BY CHAPTER ID
app.get("/links/:chapterid", (req,res,next)=>{
  con.query('SELECT * FROM link WHERE ChapterId=?',[req.params.chapterid], function(error,result,fields){
    con.on('error',function(err){
      console.log('[MY SQL ERROR]',err);
    });
    if(result && result.length)
    {
      res.end(JSON.stringify(result));
    }
    else
    {
      res.end(JSON.stringify("NO CHAPTER HERE"));
    }
  })
});


//GET ALL CATEGORY
app.get("/categories", (req,res,next)=>{
  con.query('SELECT * FROM CATEGORY', function(error,result,fields){
    con.on('error',function(err){
      console.log('[MY SQL ERROR]',err);
    });
    if(result && result.length)
    {
      res.end(JSON.stringify(result));
    }
    else
    {
      res.end(JSON.stringify("NO CATEGORY HERE"));
    }
  })
});


//GET ALL CATEGORY
app.post("/filter", (req,res,next)=>{
      var post_data = req.body;  // Get POST DATA from REQUEST
      var array = JSON.parse(post_data.data);  // Parse 'data' field from post request to json array
      var query = "SELECT * FROM manga WHERE ID IN (SELECT MangaId FROM mangacategory";  // Default query
      if( array.length > 0 )
      {
        query = query + " GROUP BY MangaID";
        if(array.length == 1) // if user select one CATEGORY
             query = query + " HAVING SUM(CASE WHEN CategoryID = "+array[0]+" THEN 1 ELSE 0 END) > 0)";
         else
         {
           for(var i=0;i<array.length;i++)
           {
             if(i==0) // first condition
             query = query + " HAVING SUM(CASE WHEN CategoryID = "+array[0]+" THEN 1 ELSE 0 END) > 0 AND";
             else if(i==array.length-1) // last condition
             query = query + " SUM(CASE WHEN CategoryID = "+array[i]+" THEN 1 ELSE 0 END) > 0)";
             else
             query = query + "SUM(CASE WHEN CategoryID = "+array[i]+" THEN 1 ELSE 0 END) > 0 AND";
           }
         }
         con.query(query, function(error,result,fields){
           con.on('error',function(err){
             console.log('[MY SQL ERROR]',err);
           });
           if(result && result.length)
           {
             res.end(JSON.stringify(result));
           }
           else
           {
             res.end(JSON.stringify("NO COMICS HERE"));
           }
         })


      }

});

//SEARCH MANGA BY NAME
app.post("/search", (req,res,next)=>{
  var post_data = req.body;  // GET BODY POST
  var name_search = post_data.search;  // GET 'search' data from Post REQUEST

  var query = "SELECT * FROM manga WHERE Name LIKE '%"+name_search+"%'";

  con.query(query, function(error,result,fields){
    con.on('error',function(err){
      console.log('[MY SQL ERROR]',err);
    });
    if(result && result.length)
    {
      res.end(JSON.stringify(result));
    }
    else
    {
      res.end(JSON.stringify("NO COMICS HERE"));
    }
  })


})


//start server
app.listen(3000, ()=>{
  console.log('App running on port 3000');
})
