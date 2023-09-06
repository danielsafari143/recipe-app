// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
try {
  let too = document.getElementById("customSwitch1");
  too.addEventListener("change", () => {
    let toogle = document.getElementById("recipe-form");
    toogle.submit();
  });
} catch (error) {
  console.log();
}