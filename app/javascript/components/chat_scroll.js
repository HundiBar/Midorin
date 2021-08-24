const chatScroll = () => {
  const scrollOnLoad = () => {
    const messages = document.querySelector('#messages')
    if(messages){
      messages.scrollTop = messages.scrollHeight;
    }
  }
    document.addEventListener('turbolinks:load', scrollOnLoad);
    window.addEventListener('load', scrollOnLoad);

  }

export { chatScroll };
