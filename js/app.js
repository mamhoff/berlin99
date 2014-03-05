

            // Prevent console.log from generating errors in IE for the purposes of the demo
            if ( ! window.console ) console = { log: function(){} };

            // The actual plugin
            $('.single-page-nav').singlePageNav({
                offset: $('.single-page-nav').outerHeight(),
                filter: ':not(.external)',
                updateHash: true,
                beforeStart: function() {
                    console.log('begin scrolling');
                },
                onComplete: function() {
                    console.log('done scrolling');
                }
            });
        
var navigation = responsiveNav(".nav-collapse", {
        animate: true,        // Boolean: Use CSS3 transitions, true or false
        transition: 250,      // Integer: Speed of the transition, in milliseconds
        label: "Menu",        // String: Label for the navigation toggle
        insert: "after",      // String: Insert the toggle before or after the navigation
        customToggle: "",     // Selector: Specify the ID of a custom toggle
        openPos: "relative",  // String: Position of the opened nav, relative or static
        jsClass: "js",        // String: 'JS enabled' class which is added to <html> el
        init: function(){},   // Function: Init callback
        open: function(){},   // Function: Open callback
        close: function(){}   // Function: Close callback
      });

jQuery(document).ready(function($) {
  $('.gallery-1').royalSlider({
    fullscreen: {
      enabled: true,
      nativeFS: true
    },
    controlNavigation: 'thumbnails',
    autoScaleSlider: true, 
    autoScaleSliderWidth: 960,     
    autoScaleSliderHeight: 850,
    loop: false,
    imageScaleMode: 'fit-if-smaller',
    navigateByClick: true,
    numImagesToPreload:2,
    arrowsNav:true,
    arrowsNavAutoHide: true,
    arrowsNavHideOnTouch: true,
    keyboardNavEnabled: true,
    fadeinLoadedSlide: true,
    globalCaption: true,
    globalCaptionInside: false,
    thumbs: {
      appendSpan: true,
      firstMargin: true,
      paddingBottom: 4
    }
  });
});


google.maps.event.addDomListener(window, 'load', init);

var map;

function init() {
    var mapOptions = {
        center: new google.maps.LatLng(52.477997,13.441822),
        zoom: 15,
        zoomControl: true,
        zoomControlOptions: {
            style: google.maps.ZoomControlStyle.SMALL,
        },
        disableDoubleClickZoom: true,
        mapTypeControl: false,
        scaleControl: false,
        scrollwheel: true,
        streetViewControl: true,
        draggable : true,
        overviewMapControl: true,
        overviewMapControlOptions: {
            opened: false,
        },
        
        mapTypeId: google.maps.MapTypeId.ROADMAP,
    styles: [
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      { "color": "#000000" },
      { "lightness": 17 }
    ]
  },{
    "featureType": "landscape",
    "elementType": "geometry",
    "stylers": [
      { "color": "#000000" },
      { "lightness": 20 }
    ]
  },{
    "featureType": "road.highway",
    "elementType": "geometry.fill",
    "stylers": [
      { "color": "#000000" },
      { "lightness": 17 }
    ]
  },{
    "featureType": "road.highway",
    "elementType": "geometry.stroke",
    "stylers": [
      { "color": "#000000" },
      { "lightness": 29 },
      { "weight": 0.2 }
    ]
  },{
    "featureType": "road.arterial",
    "elementType": "geometry",
    "stylers": [
      { "color": "#000000" },
      { "lightness": 18 }
    ]
  },{
    "featureType": "road.local",
    "elementType": "geometry",
    "stylers": [
      { "color": "#000000" },
      { "lightness": 16 }
    ]
  },{
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      { "color": "#000000" },
      { "lightness": 21 }
    ]
  },{
    "elementType": "labels.text.stroke",
    "stylers": [
      { "visibility": "on" },
      { "color": "#000000" },
      { "lightness": 16 }
    ]
  },{
    "elementType": "labels.text.fill",
    "stylers": [
      { "saturation": 36 },
      { "color": "#000000" },
      { "lightness": 40 }
    ]
  },{
    "elementType": "labels.icon",
    "stylers": [
      { "visibility": "off" }
    ]
  },{
    "featureType": "transit",
    "elementType": "geometry",
    "stylers": [
      { "color": "#000000" },
      { "lightness": 19 }
    ]
  },{
    "featureType": "administrative",
    "elementType": "geometry.fill",
    "stylers": [
      { "color": "#000000" },
      { "lightness": 20 }
    ]
  },{
    "featureType": "administrative",
    "elementType": "geometry.stroke",
    "stylers": [
      { "color": "#000000" },
      { "lightness": 17 },
      { "weight": 1.2 }
    ]
  }
],
    
    }

    var mapElement = document.getElementById('map');
    var map = new google.maps.Map(mapElement, mapOptions);
    var locations = [
        ['10', 50.9588593, 13.1194093],['12043', 52.4777481, 13.4415387]
    ];

    for (i = 0; i < locations.length; i++) {
        marker = new google.maps.Marker({
            icon: '',
            position: new google.maps.LatLng(locations[i][1], locations[i][2]),
            map: map
        });
    }
}
