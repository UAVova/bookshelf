jQuery ->
  $(document).on "click", "#comment-form-button", (event) ->
    $(".comment-form").slideDown() if $(".comment-form").is(":hidden")