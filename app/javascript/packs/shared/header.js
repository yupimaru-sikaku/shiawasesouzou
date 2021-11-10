const hamburger = document.querySelector(".hamburger");
const globalMenuSp = document.querySelector(".globalMenuSp");
const circle_bg = document.querySelector(".circle_bg");

hamburger.addEventListener("click", (e) => {
  e.preventDefault();
  globalMenuSp.classList.toggle("active");
  hamburger.classList.toggle("active");
  circle_bg.classList.toggle("active");
});

// console.log(123);
