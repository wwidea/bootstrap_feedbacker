import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bootstrap-feedbacker--remarks"
export default class extends Controller {
  static targets  = [ "modal" ]

  modalTargetConnected(element) {
    $(element).modal('show')
  }
}
