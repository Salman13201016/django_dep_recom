// Sitebar menu active class added function

// $(".nav-link_aside").click(function(){

// });

let sitebarmenu = document.querySelectorAll(".nav-link_aside");
let count = 1;
for(let i = 0; i<sitebarmenu.length; i++){
    sitebarmenu[i].addEventListener('click', function(){
        let activeClas = document.querySelector('.active')
        activeClas.classList.remove("active");
        sitebarmenu[i].classList.add('active');
    })
}

// Symtomp popup btn
let predic_btn = document.querySelector(".predict_btn");
predic_btn.addEventListener('click', function(){
    let popup = document.querySelector(".symtomp_popup");
    popup.classList.add("display_block");
})
let popup_close = document.querySelector(".dep_popup_close");
popup_close.addEventListener('click', function(){
    let popup = document.querySelector(".symtomp_popup");
    popup.classList.remove("display_block");
})