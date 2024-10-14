import { bootstrapApplication } from '@angular/platform-browser';
import { provideRouter, Routes } from '@angular/router';
import { AppComponent } from './app/app.component';
import { ShoppingListComponent } from './app/shopping-list/shopping-list.component';
import { HyperlinkComponent } from './app/hyperlink/hyperlink.component';
import { LeapYearComponent } from './app/leap-year/leap-year.component';
import { literal } from '@angular/compiler';
import { TableQuestionComponent } from './app/table-question/table-question.component';
import { NestedListComponent } from './app/nested-list/nested-list.component';
import { UlListComponent } from './app/ul-list/ul-list.component';

const routes: Routes = [
  { path: 'shopping-list', component: ShoppingListComponent },{
    path: 'hyperlink', component: HyperlinkComponent
  },{path:'leap-year',component:LeapYearComponent},{path:'table-question',component:TableQuestionComponent}
,{path:'nested-list',component:NestedListComponent},{path:'ul-list',component:UlListComponent}
];

bootstrapApplication(AppComponent, {
  providers: [
    provideRouter(routes), // Provide routing configuration
  ],
}).catch(err => console.error(err));
