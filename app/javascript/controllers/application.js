import { Application } from "@hotwired/stimulus"
import * as bootstrap from "bootstrap"
const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application
window.bootstrap = bootstrap
export { application }

Turbo.setConfirmMethod( () => {
  let dialog = Document.getElementbyId('turbo-confirm')
})
