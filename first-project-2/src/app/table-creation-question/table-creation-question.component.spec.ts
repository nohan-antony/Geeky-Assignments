import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TableCreationQuestionComponent } from './table-creation-question.component';

describe('TableCreationQuestionComponent', () => {
  let component: TableCreationQuestionComponent;
  let fixture: ComponentFixture<TableCreationQuestionComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [TableCreationQuestionComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TableCreationQuestionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
