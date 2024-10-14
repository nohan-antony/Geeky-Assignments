import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TableQuestionComponent } from './table-question.component';

describe('TableQuestionComponent', () => {
  let component: TableQuestionComponent;
  let fixture: ComponentFixture<TableQuestionComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [TableQuestionComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TableQuestionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
