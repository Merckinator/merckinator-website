import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SimpleMatCardComponent } from '../SimpleMatCard/simple-mat-card.component';

@Component({
  selector: 'merck-note-card',
  standalone: true,
  imports: [CommonModule, SimpleMatCardComponent],
  templateUrl: './note-card.component.html',
  styleUrls: ['./note-card.component.scss'],
})
export class NoteCardComponent {}
