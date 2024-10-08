import { Component } from '@angular/core';

@Component({
  selector: 'app-leap-year-question-5',
  standalone: true,
  imports: [],
  templateUrl: './leap-year-question-5.component.html',
  styleUrl: './leap-year-question-5.component.scss'
})
export class LeapYearQuestion5Component {
  result: string = '';
  checkLeapYear(yearInput: HTMLInputElement) {
    const year = parseInt(yearInput.value); 

    
      if (this.isLeapYear(year)) {
        this.result = `${year} is a leap year.`;
      } else {
        this.result = `${year} is not a leap year.`;
      }
    
  }

  private isLeapYear(year: number): boolean {
    return year % 4 === 0 && (year % 100 !== 0 || year % 400 === 0);
  }
}
