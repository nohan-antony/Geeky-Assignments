import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { ShoppingListService } from '../shopping-list.service';

@Component({
  selector: 'app-add-item',
  standalone: true,
  templateUrl: './add-item.component.html',
  styleUrls: ['./add-item.component.scss'],
  imports: [FormsModule], // Import FormsModule for two-way data binding
})
export class AddItemComponent {
  itemInput: string = '';

  constructor(private shoppingListService: ShoppingListService) {}

  addItem() {
    const trimmedValue = this.itemInput.trim();
    if (trimmedValue) {
      this.shoppingListService.addItem(trimmedValue);
      this.itemInput = ''; // Clear the input after adding
    }
  }
}
