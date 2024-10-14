import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NestedListComponent } from './nested-list.component';

describe('NestedListComponent', () => {
  let component: NestedListComponent;
  let fixture: ComponentFixture<NestedListComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [NestedListComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(NestedListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
