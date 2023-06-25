import { ComponentFixture, TestBed } from '@angular/core/testing';
import { SimpleMatCardComponent } from './simple-mat-card.component';

describe('SimpleMatCardComponent', () => {
  let component: SimpleMatCardComponent;
  let fixture: ComponentFixture<SimpleMatCardComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [SimpleMatCardComponent],
    }).compileComponents();

    fixture = TestBed.createComponent(SimpleMatCardComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
