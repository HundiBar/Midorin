import party from 'party-js';

const confetti = () => {
  const cake = document.querySelector('.cake');

  cake.addEventListener('click', () => {
    party.confetti(cake, {
          count: (200),
        });
  });
}

export { confetti };
