$('.book:not(#book-<%= @book.id %>)').remove();
$('.book').children().fadeOut(function(){
	$('.book').children().remove();
	$('.book').html("<%= j render 'show' %>").children().hide().fadeIn(1000);
	$('.book').css("max-height", "1500px");
});