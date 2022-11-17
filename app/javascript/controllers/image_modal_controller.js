import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="image-modal"
export default class extends Controller {
  connect() {

    const modal = document.getElementById("myModal");

    // Get the image and insert it inside the modal - use its "alt" text as a caption
    const img = document.querySelector(".home-maine-photo");
    const modalImg = document.getElementById("img01");
    const captionText = document.getElementById("caption");
    img.onclick = () => {
      modal.style.display = "block";
      modalImg.src = this.src;
      captionText.innerHTML = this.alt;
    }

    // Get the <span> element that closes the modal
    const span = document.getElementsByClassName("close")[0];

    // When the user clicks on <span> (x), close the modal
    span.onclick = () => {
      modal.style.display = "none";
    }


  }
}
