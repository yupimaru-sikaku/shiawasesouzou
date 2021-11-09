// $(function () {
//   $(".hamburger").click(function () {
//     $(this).toggleClass("active");

//     if ($(this).hasClass("active")) {
//       $(".globalMenuSp").addClass("active");
//     } else {
//       $(".globalMenuSp").removeClass("active");
//     }
//   });
// });

const hamburger = document.querySelector(".hamburger");
const globalMenuSp = document.querySelector(".globalMenuSp");
const header_circle = document.querySelector(".header_circle");

hamburger.addEventListener("click", (e) => {
  e.preventDefault();
  globalMenuSp.classList.toggle("active");
  hamburger.classList.toggle("active");
  header_circle.classList.toggle("active");
});

// console.log(123);
