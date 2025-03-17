import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="recipe-creation"
export default class extends Controller {
    static targets = ["button", "ingredients", "template"]

    connect() {
        this.addIngredient();
    }
    addIngredient(event) {
        event?.preventDefault(); // Prevent the form from submitting

        const content = this.templateTarget.innerHTML.replace(/TEMPLATE_RECORD/g, new Date().getTime());
        this.ingredientsTarget.insertAdjacentHTML('beforeend', content)
    }

}
