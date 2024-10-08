import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { TableCreationQuestionComponent } from './table-creation-question/table-creation-question.component';
import { HyperlinkQuestion2Component } from './hyperlink-question-2/hyperlink-question-2.component';
import { ListQuestion3Component } from './list-question-3/list-question-3.component';
import { NestedListQuestion4Component } from './nested-list-question-4/nested-list-question-4.component';
import { ShowAlertQuestion5Component } from './show-alert-question-5/show-alert-question-5.component';
import { LeapYearQuestion5Component } from './leap-year-question-5/leap-year-question-5.component';
import { ShoppingListQuestion7Component } from './shopping-list-question-7/shopping-list-question-7.component';
import { FormsModule } from '@angular/forms'; // Import FormsModule

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [
    RouterOutlet,
    TableCreationQuestionComponent,
    HyperlinkQuestion2Component,
    ListQuestion3Component,
    NestedListQuestion4Component,
    ShowAlertQuestion5Component,
    LeapYearQuestion5Component,
    ShoppingListQuestion7Component,
    FormsModule  // Import FormsModule here
  ],
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']  // Corrected from styleUrl to styleUrls
})
export class AppComponent {
  title = 'first-project';
}
