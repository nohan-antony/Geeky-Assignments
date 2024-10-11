import { bootstrapApplication } from '@angular/platform-browser';
import { provideRouter, Routes } from '@angular/router';
import { AppComponent } from './app/app.component';
import { ShoppingListComponent } from './app/shopping-list/shopping-list.component';
import { HyperlinkComponent } from './app/hyperlink/hyperlink.component';
import { LeapYearComponent } from './app/leap-year/leap-year.component';
import { literal } from '@angular/compiler';
import { ListQuestionComponent } from './app/list-question/list-question.component';

const routes: Routes = [
  { path: 'shopping-list', component: ShoppingListComponent },{
    path: 'hyperlink', component: HyperlinkComponent
  },{path:'leap-year',component:LeapYearComponent}, {path:'List',component:ListQuestionComponent},// Route for the shopping list
];

bootstrapApplication(AppComponent, {
  providers: [
    provideRouter(routes), // Provide routing configuration
  ],
}).catch(err => console.error(err));
