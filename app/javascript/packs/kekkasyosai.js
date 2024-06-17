document.addEventListener('DOMContentLoaded', function() {
  const mainImage = document.querySelector('.mainImage img');
  const thumbnails = document.querySelectorAll('.thumbnails img');

  thumbnails.forEach(thumbnail => {
    thumbnail.addEventListener('click', function() {
      mainImage.src = thumbnail.src;
    });
  });
});