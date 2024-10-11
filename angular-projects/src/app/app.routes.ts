import { Routes } from '@angular/router';
import { ShoppingListComponent } from './shopping-list/shopping-list.component';
import { HyperlinkComponent } from './hyperlink/hyperlink.component';
import { LeapYearComponent } from './leap-year/leap-year.component';
import { ListQuestionComponent } from './list-question/list-question.component';
export const routes: Routes = [{path: 'shopping-list', component: ShoppingListComponent},{path:'hyperlink',component: HyperlinkComponent},{path:'leap-year',component:LeapYearComponent},{path:'list-question',component:ListQuestionComponent}];
