import { Component } from '@angular/core';

@Component({
  selector: 'app-show-alert-question-5',
  standalone: true,
  imports: [],
  templateUrl: './show-alert-question-5.component.html',
  styleUrl: './show-alert-question-5.component.scss'
})
export class ShowAlertQuestion5Component {
   showAlert(){
    alert('Hello world');
  }
}

