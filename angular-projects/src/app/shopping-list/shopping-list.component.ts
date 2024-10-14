import { Component } from '@angular/core';
import { AddItemComponent } from '../add-item/add-item.component';
import { ViewListComponent } from '../view-list/view-list.component';

@Component({
  selector: 'app-shopping-list',
  standalone: true,
  templateUrl: './shopping-list.component.html',
  styleUrls: ['./shopping-list.component.scss'],
  imports: [AddItemComponent, ViewListComponent]
})
export class ShoppingListComponent {}
