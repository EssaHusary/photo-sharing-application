var express = require('express');
const { userIsLoggedIn } = require('../middleware/routeprotectors');
var router = express.Router();
var isLoggedIn = require('../middleware/routeprotectors').userIsLoggedIn;
const {getRecentPosts, getPostById, getCommentsByPostId} = require('../middleware/postsmiddleware');
var db = require('../config/database');



/* GET home page. */
router.get('/', getRecentPosts, function(req, res, next) {
  res.render('index', { title: 'CSC 317 App', name:"Essa Husary" });
});



router.get('/login', function(req, res, next) {
  res.render('login', { title: 'CSC 317 App', name:"Essa Husary" });
});



router.get('/registration', function(req, res, next) {
  res.render('registration', { title: 'CSC 317 App', name:"Essa Husary" });
});



router.get('/viewpost', function(req, res, next) {
  res.render('viewpost', { title: 'CSC 317 App', name:"Essa Husary" });
});



router.use('/postimage', isLoggedIn);
router.get('/postimage', function(req, res, next) {
  res.render('postimage', { title: 'CSC 317 App', name:"Essa Husary" });
});



router.get('/post/:id(\\d+)', getPostById, getCommentsByPostId, (req, res, next) => {
  res.render('viewpost', {title: `Post ${req.params.id}`});
});



module.exports = router;
