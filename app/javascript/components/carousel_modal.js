const carouselModal = () => {
  const pic = document.querySelector(".plantPic");
  if (pic) {
    pic.addEventListener('change', (event) => {
      const launch = document.querySelector(".carouselModalButton");
      launch.click()
    });
  }
}

export { carouselModal };

