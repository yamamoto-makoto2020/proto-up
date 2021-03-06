if (document.URL.match( /new/ ) || document.URL.match( /edit/ )) {
  document.addEventListener('DOMContentLoaded', function(){
    const ImageList = document.getElementById('img');

    document.getElementById('post-image').addEventListener('change', function(e){
      const imageContent = document.querySelector('img');
        if (imageContent){
          imageContent.remove();
        }

      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);

      const imageElement = document.createElement('div');

      const blobImage = document.createElement('img');
      blobImage.height = 600;
      blobImage.width = 850;
      blobImage.setAttribute('src', blob);
      
      imageElement.appendChild(blobImage);
      ImageList.appendChild(imageElement);

    });
  });
}