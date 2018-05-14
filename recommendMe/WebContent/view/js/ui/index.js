$(function unfoldPost() {
  var triggerButton = $("header");

  triggerButton.on("click", function(e) {
    e.preventDefault();

    $(this).closest(".ui-card").toggleClass("triggered");
    $(this).closest(".ui-card-trigger-icon").toggleClass("triggered");

  });
});
