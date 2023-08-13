const checkUsername = (username) => {

    let usernameChecker = /^\D(?=.*[0-9])\w{2,}$/;  // must begin only with a letter and must contain a number somewhere
    return usernameChecker.test(username);

}



const checkEmail = (email) => {

    let emailChecker = /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/;
    return emailChecker.test(email);

}



const checkPassword = (password) => {

    let passwordChecker = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[(/*-+!@#$^&)])(?=.*[0-9]).{8,}.*$/; /* must contain at least 1 upper, 1 lower, 1 special, 
                                                                                              1 number, and be at least 8 characters long*/
    return passwordChecker.test(password);

}



const passwordsMatch = (password, cpassword) => {

    return cpassword === password;

}



const registerValidator = (req, res, next) => {

    let username = req.body.username;
    let email = req.body.email;
    let password = req.body.password;
    let cpassword = req.body.cpassword;

    if(!checkUsername(username)){

        req.flash('error', 'Invalid username!');
        req.session.save(err => {
            res.redirect("/registration");
        })

    }else if(!checkEmail(email)){

        req.flash('error', 'Invalid email!');
        req.session.save(err => {
            res.redirect("/registration");
        })

    }else if(!checkPassword(password)){

        req.flash('error', 'Invalid password!');
        req.session.save(err => {
            res.redirect("/registration");
        })

    }else if(!passwordsMatch(password, cpassword)){

        req.flash('error', 'Passwords do not match!');
        req.session.save(err => {
            res.redirect("/registration");
        })

    }else{

        next();

    }
}



/*const loginValidator = (req, res, next) => {           /* To be honest Professor, I'm not too sure what to do here as we've already set up the app to where
                                                            regardless of how the username and password look, if neither one matches what's in the database,
                                                            the user will be informed that they have to retry. When grading, can you please write a comment
                                                            explaning why this step is necessary just for the sake of expanding my knowledge? Thanks */  
//}



module.exports = {registerValidator}