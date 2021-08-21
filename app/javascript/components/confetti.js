import party from 'party-js';

const confetti = () => {
  const cake = document.querySelector('.cake');

  if (cake) {
  cake.addEventListener('click', () => {
    party.confetti(cake, {
          count: 50,
          spread: 40
        });
    party.confetti(cake, {
          count: 50,
          spread: 40,
          shapes: ["star"]
        });
    party.sparkles(cake, {
        });
    cake.classList.add("cake-fadeout");
    });
  }
}

export { confetti };
