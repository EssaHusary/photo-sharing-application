//// THIS IS THE IMPORTED ASSIGNMENT 4 CODE
//// CLIENT SIDE VALIDATION FOR THIS PROJECT AS WELL



const username = document.getElementById('username');
const email = document.getElementById('email');
const password1 = document.getElementById('password1');
const password2 = document.getElementById('password2');
const checkbox1 = document.getElementById('checkbox1');
const checkbox2 = document.getElementById('checkbox2');
const button = document.getElementById('button');




button.addEventListener("click", event => {

    puttingEverythingTogether(event);
    

});




function puttingEverythingTogether(event){

    let formSubmission;

    if (!usernameBeginsWithChar() === true){
        
        alert("Please include a letter at the beginning of the username!");
        event.preventDefault();
        formSubmission = false;
    }

    if (!usernameValidation() === true){
        
        alert("Please make sure username has a lowercase letter AND a number AND is 3 or more characters long AND is not left blank!");
        event.preventDefault();
        formSubmission = false;
    }

    if (!emailValidation() === true){

        alert("Your email lacks either a username, an @, a '.', or a domain name!");
        event.preventDefault();
        formSubmission = false;
    }  

    if (!passwordLength() === true){

        alert("Password length is too short! It must be at least 8 characters long!");
        event.preventDefault();
        formSubmission = false;
    }  

    if (!passwordContainsUpper() === true){

        alert("Please include at least one uppercase letter in the password!");
        event.preventDefault();
        formSubmission = false;
    }
    
    if (!passwordContainsNumber() === true){

        alert("Please include at least one number in the password!");
        event.preventDefault();
        formSubmission = false;
    }
    
    if (!passwordContainsSpecialCharacter() === true){

        alert("Please include at least one of the following special characters in the password: ( , / , * , - , + , ! , @ , # , $ , ^ , & , * , )");
        event.preventDefault();
        formSubmission = false;
    }
    
    if (!passwordsMatch() === true){

        alert("Please make sure that both passwords are IDENTICAL!");
        event.preventDefault();
        formSubmission = false;
    }

    if(formSubmission != false){

        alert("Form was submitted successfully!");

    }

}




function usernameBeginsWithChar(){

    if ((username.value.charCodeAt(0) >= 65 && username.value.charCodeAt(0) <= 90) || (username.value.charCodeAt(0) >= 97) && 
        (username.value.charCodeAt(0) <= 122)){

        return true;

    } else {

        return false;
    
    }

}




function usernameValidation(){

    let check1;
    let check2;

    for (let i = 0; i < username.value.length; i++){

        if (username.value.charCodeAt(i) >= 97 && username.value.charCodeAt(i) <= 122){
        
            check1 = true;
        
        } else if (username.value.charCodeAt(i) >= 48 && username.value.charCodeAt(i) <= 57){
        
            check2 = true;
        
        } 
    }

    if (check1 === true && check2 === true && username.value.length >= 3 && username.value.length != ""){
     
        return true;
    
    } else {
    
        return false;
    
    }

}




function emailValidation(){

    if(!email.test(/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/)){

        return true;

    } else {

        return false;

    }
}




function passwordLength(){

    if (password1.value.length >= 8){
    
        return true;
    
    } else {
    
        return false;
    
    }

}




function passwordContainsUpper(){
    
    for(let i = 0; i < password1.value.length; i++){
        
        if (password1.value.charCodeAt(i) >= 65 && password1.value.charCodeAt(i) <= 90){
            return true;
        }
        
    }

    return false;

}




function passwordContainsNumber(){
    
    for(let i = 0; i < password1.value.length; i++){
        
        if (password1.value.charCodeAt(i) >= 48 && password1.value.charCodeAt(i) <= 57){
            return true;
        
        }
        
    }

    return false;

}




function passwordContainsSpecialCharacter(){
    
    for(let i = 0; i < password1.value.length; i++){
        
        if ((password1.value.charCodeAt(i) >= 33 && password1.value.charCodeAt(i) <= 47) || password1.value.charCodeAt(i) == 64 ||
            password1.value.charCodeAt(i) == 94){
                
            return true;
        
        }
        
    }

    return false;

}




function passwordsMatch(){

    if (password1.value == password2.value){
    
        return true;
    
    } else {
    
        return false;
    
    }
}


