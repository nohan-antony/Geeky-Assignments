import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HyperlinkQuestion2Component } from './hyperlink-question-2.component';

describe('HyperlinkQuestion2Component', () => {
  let component: HyperlinkQuestion2Component;
  let fixture: ComponentFixture<HyperlinkQuestion2Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [HyperlinkQuestion2Component]
    })
    .compileComponents();

    fixture = TestBed.createComponent(HyperlinkQuestion2Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
