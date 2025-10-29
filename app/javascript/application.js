// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";

document.addEventListener("DOMContentLoaded", () => {
  const token = document
    .querySelector('meta[name="csrf-token"]')
    .getAttribute("content");
  document.body.addEventListener("htmx:configRequest", (event) => {
    event.detail.headers["X-CSRF-Token"] = token;
  });
});
