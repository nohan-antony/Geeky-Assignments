import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { AddItemComponent } from './add-item/add-item.component';

@Component({
  selector: 'app-view-list',
  standalone: true,
  imports: [CommonModule, AddItemComponent], // Import AddItemComponent
  templateUrl: './view-list.component.html',
  styleUrls: ['./view-list.component.scss']
})
export class ViewListComponent {
  shoppingList: string[] = []; // Local shopping list for View Component

  deleteItem(index: number) {
    this.shoppingList.splice(index, 1); // Remove item from shopping list
  }
}
