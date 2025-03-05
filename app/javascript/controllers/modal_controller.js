import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ['option', 'overlay'];
  // initial when modal opens
  connect() {
    this.setInitialSelection();
  }

  setInitialSelection() {
    if (this.optionTargets.length > 0) {
      this.optionTargets[0].classList.add('selected');
      this.overlayTargets[0].classList.add('show');
    }
  }

  optionPicked(event) {
    // Remove 'selected' class from all options
    this.optionTargets.forEach(option => option.classList.remove('selected'));

    // Add 'selected' class to the clicked option
    event.currentTarget.classList.add('selected');

    const newImage = event.currentTarget.querySelector('img').outerHTML;
    this.overlayTarget.innerHTML = newImage;
    this.overlayTarget.classList.add('show');
  }

  close() {
    this.element.remove();
  }
}
