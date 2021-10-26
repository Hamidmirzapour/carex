const heading = "به نمایشگاه خودرو کارکس خوش آمدید";
let i = 0;

const typing = () => {
    if(i < heading.length){
        document.querySelector('.banner-heading').innerHTML += heading.charAt(i);
        i++;
        setTimeout(typing, 150);
    }
}

typing();

