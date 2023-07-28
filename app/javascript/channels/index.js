// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)


$(function(){
    $('.check').on('click', function() {
      if ($(this).prop('checked')){
        // 一旦全てをクリアして再チェックする
        $('.check').prop('checked', false);
        $(this).prop('checked', true);
      }
    });
  });