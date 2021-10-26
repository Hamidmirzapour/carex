const heading = "با ما در ارتباط باشید";
let i = 0;

const typing = () => {
    if (i < heading.length){
        document.querySelector('.heading').innerHTML += heading.charAt(i);
        i++;
        setTimeout(typing, 70);
    }
}

typing();



document.querySelector('.hamburger-menu').addEventListener('click', () => {
    document.querySelector('.nav-wrapper').classList.toggle('change');
    document.querySelector('.down-icon').style.visibility = "0";
});

