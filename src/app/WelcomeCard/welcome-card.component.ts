import { ChangeDetectionStrategy, Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SimpleMatCardComponent } from '../SimpleMatCard/simple-mat-card.component';

@Component({
  selector: 'merck-welcome-card',
  standalone: true,
  imports: [CommonModule, SimpleMatCardComponent],
  templateUrl: './welcome-card.component.html',
  styleUrls: ['./welcome-card.component.scss'],
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class WelcomeCardComponent {}
