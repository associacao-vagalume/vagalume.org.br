$(document).ready(function () {
  var tag = document.createElement('script');
  tag.src = 'https://www.youtube.com/iframe_api';
  var firstScriptTag = document.getElementsByTagName('script')[0];
  firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
});

$( window ).on('load', function () {
  $('.play.desktop')
    .removeClass('invisible')
    .addClass('d-md-block');
});

var player;

function onYouTubeIframeAPIReady() {
  player = new YT.Player('player', {
    height: '390',
    width: '694',
    playerVars: {
      autoplay: 0,
      loop: 1,
      controls: 1,
      showinfo: 0,
      autohide: 1,
      modestbranding: 1,
      vq: 'hd1080',
      hd: '1'
    },
    videoId: videoId,
    events: {
      'onReady': onPlayerReady
    }
  });
}

function onPlayerReady(event) {
  $('#player').addClass('embed-responsive-item');
  $('#modal').on('shown.bs.modal', function () {
    player.playVideo();
  });
  $('#modal').on('hidden.bs.modal', function () {
    player.stopVideo();
  });
}
;
