import { Component, Input } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MatCardModule } from '@angular/material/card';

@Component({
  selector: 'merck-simple-mat-card',
  standalone: true,
  imports: [CommonModule, MatCardModule],
  templateUrl: './simple-mat-card.component.html',
  styleUrls: ['./simple-mat-card.component.scss'],
})
export class SimpleMatCardComponent {
  @Input() title = '';
}
