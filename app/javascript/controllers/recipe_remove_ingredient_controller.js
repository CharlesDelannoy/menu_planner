import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="recipe-remove-ingredient"
export default class extends Controller {
  static targets = ["ingredient"]

  removeIngredient(event) {
    event?.preventDefault(); // Prevent the form from submitting
    this.ingredientTarget.remove()
  }
}
