import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NestedListQuestion4Component } from './nested-list-question-4.component';

describe('NestedListQuestion4Component', () => {
  let component: NestedListQuestion4Component;
  let fixture: ComponentFixture<NestedListQuestion4Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [NestedListQuestion4Component]
    })
    .compileComponents();

    fixture = TestBed.createComponent(NestedListQuestion4Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
