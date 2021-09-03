// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
import { initSelect2 } from '../components/init_select2';
import { searchFire } from '../components/search_fire';
import { picFire } from "../components/pic_upload";
import { initChatroomCable } from "../channels/chatroom_channel";
import { toggleSwitch } from '../components/toggle_switch';
import { chatScroll } from '../components/chat_scroll';
import { confetti } from '../components/confetti';
import { waterAnimation } from '../components/water_animation';
// import { showCircle} from '../components/yann';
// import { carouselModal } from '../components/carousel_modal';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // showCircle();
  initSelect2();
  searchFire();
  picFire();
  initChatroomCable();
  toggleSwitch();
  chatScroll();
  confetti();
  waterAnimation();
  // carouselModal();
});
