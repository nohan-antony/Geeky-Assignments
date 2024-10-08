import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-shopping-list-question-7',
  standalone: true,
  templateUrl: './shopping-list-question-7.component.html',
  imports:[FormsModule,CommonModule],
  styleUrls: ['./shopping-list-question-7.component.scss']
})
export class ShoppingListQuestion7Component {
  itemInput: string = '';
  shoppingList: string[] = [];

  addItem() {
    const trimmedValue = this.itemInput.trim();
  
      this.shoppingList.push(trimmedValue);
      this.itemInput = '';
 
  }

  deleteItem(index: number) {
    this.shoppingList.splice(index, 1);
  }
}

