import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SimpleMatCardComponent } from '../SimpleMatCard/simple-mat-card.component';

@Component({
  selector: 'merck-contact-card',
  standalone: true,
  imports: [CommonModule, SimpleMatCardComponent],
  templateUrl: './contact-card.component.html',
  styleUrls: ['./contact-card.component.scss'],
})
export class ContactCardComponent {}
