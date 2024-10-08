import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LeapYearQuestion5Component } from './leap-year-question-5.component';

describe('LeapYearQuestion5Component', () => {
  let component: LeapYearQuestion5Component;
  let fixture: ComponentFixture<LeapYearQuestion5Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [LeapYearQuestion5Component]
    })
    .compileComponents();

    fixture = TestBed.createComponent(LeapYearQuestion5Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
