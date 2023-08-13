//// THIS IS THE IMPORTED ASSIGNMENT 4 CODE





// function fadeOut(event){

//     let x = setInterval(function fade(){
//         if (event.style.opacity === 0.1){
//             clearInterval(x);
//             let parentOfRemovalTarget = document.getElementById("container");
//             parentOfRemovalTarget.removeChild(event);
//             console.log("pizza");
//         }
//         event.style.opacity = event.style.opacity - 0.1;
//         console.log(event.style.opacity);
//     }, 500);
    
// }


// function createPhotoCard (data, containerDiv){


//     let newDiv = document.createElement("div");
//     newDiv.setAttribute("id", `photo-${data.id}`);
//     newDiv.setAttribute("class", "fadeOut");
//     let newImage = document.createElement("img");
//     newImage.setAttribute("src", data.url);
//     newImage.setAttribute("alt", "This was supposed to be a photo");
//     newDiv.appendChild(newImage);
//     let newTitle = document.createElement("h1");
//     newTitle.innerHTML = data.title;
//     newDiv.appendChild(newTitle);
//     newDiv.setAttribute('click', fadeOut(newDiv));      // Commented out because when images are created, all of them disappear. I'll need to work on this
//                                                         // after it's due...
//     console.log("i hate 317");
//     containerDiv.appendChild(newDiv);
    

// }


// let mainDiv = document.getElementById("container");
// if (mainDiv){
//     let fetchURL = "https://jsonplaceholder.typicode.com/albums/2/photos"
//     fetch(fetchURL)
//     .then((data) => data.json())
//     .then((photos) => {
//         let innerHTML = "";
//         photos.forEach((photo) => {
//             createPhotoCard(photo, mainDiv);
//         });
//         document.getElementById('items-count').innerHTML = `There are ${photos.length} photo(s) being shown`;
//     })
// }