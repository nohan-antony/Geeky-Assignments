import { Routes } from '@angular/router';
import { ShoppingListComponent } from './shopping-list/shopping-list.component';
import { HyperlinkComponent } from './hyperlink/hyperlink.component';
import { LeapYearComponent } from './leap-year/leap-year.component';
import { TableQuestionComponent } from './table-question/table-question.component';
import { NestedListComponent } from './nested-list/nested-list.component';
import { UlListComponent } from './ul-list/ul-list.component';
export const routes: Routes = [{path: 'shopping-list', component: ShoppingListComponent},{path:'hyperlink',component: HyperlinkComponent},
{path:'leap-year',component:LeapYearComponent},{path:'table-question',component:TableQuestionComponent},
{path:'nested-list',component:NestedListComponent},{path:'ul-list',component:UlListComponent}];
