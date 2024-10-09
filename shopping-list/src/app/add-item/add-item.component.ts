import { Component, Input, Output, EventEmitter } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-add-item',
  standalone: true,
  imports: [FormsModule, CommonModule],
  templateUrl: './add-item.component.html',
  styleUrls: ['./add-item.component.scss']
})
export class AddItemComponent {
  @Input() shoppingList: string[] = []; // Receive shoppingList from parent
  @Output() shoppingListChange = new EventEmitter<string[]>(); // Emit changes

  itemInput: string = '';

  addItem() {
    const trimmedValue = this.itemInput.trim();
    if (trimmedValue) {
      this.shoppingList.push(trimmedValue); // Add item to local shoppingList
      this.shoppingListChange.emit(this.shoppingList); // Emit the updated list to parent
      this.itemInput = ''; // Clear input field
    }
  }
}
