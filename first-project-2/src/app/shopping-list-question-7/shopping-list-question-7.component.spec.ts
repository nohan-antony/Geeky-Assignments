import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ShoppingListQuestion7Component } from './shopping-list-question-7.component';

describe('ShoppingListQuestion7Component', () => {
  let component: ShoppingListQuestion7Component;
  let fixture: ComponentFixture<ShoppingListQuestion7Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ShoppingListQuestion7Component]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ShoppingListQuestion7Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
