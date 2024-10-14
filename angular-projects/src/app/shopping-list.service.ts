import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class ShoppingListService {
  private shoppingListSubject = new BehaviorSubject<string[]>([]);
  shoppingList$ = this.shoppingListSubject.asObservable();

  getShoppingList(): string[] {
    return this.shoppingListSubject.value;
  }

  addItem(item: string) {
    const currentList = this.getShoppingList();
    this.shoppingListSubject.next([...currentList, item]); // Add new item
  }

  deleteItem(index: number) {
    const currentList = this.getShoppingList();
    currentList.splice(index, 1); // Remove item by index
    this.shoppingListSubject.next([...currentList]);
  }
}
