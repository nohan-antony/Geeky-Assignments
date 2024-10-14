import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ShoppingListService } from '../shopping-list.service';

@Component({
  selector: 'app-view-list',
  standalone: true,
  templateUrl: './view-list.component.html',
  styleUrls: ['./view-list.component.scss'],
  imports: [CommonModule], // Import CommonModule for ngFor and ngIf
})
export class ViewListComponent {
  shoppingList: string[] = [];

  constructor(private shoppingListService: ShoppingListService) {}

  ngOnInit(): void {
    this.shoppingListService.shoppingList$.subscribe((list) => {
      this.shoppingList = list;
    });
  }

  deleteItem(index: number) {
    this.shoppingListService.deleteItem(index);
  }
}
