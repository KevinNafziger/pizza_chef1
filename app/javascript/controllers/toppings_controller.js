import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  // method for alerting before deleting posts
static values = { confirmMessage: String };

  confirm(event) {
    if (!(window.confirm(this.confirmMessageValue))) {
      event.preventDefault();
      event.stopImmediatePropagation();
    };
  };
}