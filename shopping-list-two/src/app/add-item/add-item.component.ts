import { Component, Input } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-add-item',
  standalone: true,
  imports: [CommonModule, FormsModule], // Import FormsModule for ngModel
  templateUrl: './add-item.component.html',
  styleUrls: ['./add-item.component.scss']
})
export class AddItemComponent {
  @Input() shoppingList: string[] = []; // Receive shoppingList from parent
  itemInput: string = '';

  addItem() {
    const trimmedValue = this.itemInput.trim();
    if (trimmedValue) {
      this.shoppingList.push(trimmedValue); // Add item to shopping list
      this.itemInput = ''; // Clear input field
    }
  }
}
