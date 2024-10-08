import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ShowAlertQuestion5Component } from './show-alert-question-5.component';

describe('ShowAlertQuestion5Component', () => {
  let component: ShowAlertQuestion5Component;
  let fixture: ComponentFixture<ShowAlertQuestion5Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ShowAlertQuestion5Component]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ShowAlertQuestion5Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
