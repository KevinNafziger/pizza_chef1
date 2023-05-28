import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modals"
export default class extends Controller {
  connect() {
  }

  submitEnd(e) {
    if (e.detail.success)
    {
      this.hideModal
    }
  }

  hideModal(e) {
    this.element.remove()
  }
}
