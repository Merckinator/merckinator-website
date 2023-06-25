import { Component } from '@angular/core';
import { RouterModule } from '@angular/router';
import { WelcomeCardComponent } from './WelcomeCard/welcome-card.component';
import { ContactCardComponent } from './ContactCard/contact-card.component';
import { NoteCardComponent } from './NoteCard/note-card.component';

@Component({
  standalone: true,
  imports: [
    RouterModule,
    ContactCardComponent,
    NoteCardComponent,
    WelcomeCardComponent,
  ],
  selector: 'merck-website-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
})
export class AppComponent {}
