import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ListQuestion3Component } from './list-question-3.component';

describe('ListQuestion3Component', () => {
  let component: ListQuestion3Component;
  let fixture: ComponentFixture<ListQuestion3Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ListQuestion3Component]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ListQuestion3Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
