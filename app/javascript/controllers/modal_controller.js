import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="modal"
export default class extends Controller {
  // initial when modal opens
  // connect() {
  // console.log('HEllo from modal controller');
  // console.log(this.element);
  // }

  close() {
    this.element.remove();
  }
}
