import { Component, Input } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-view-list',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './view-list.component.html',
  styleUrls: ['./view-list.component.scss']
})
export class ViewListComponent {
  @Input() shoppingList: string[] = [];

  deleteItem(index: number) {
    this.shoppingList.splice(index, 1);
  }
}
