import { Component } from '@angular/core';
import { RouterModule } from '@angular/router';
import { WelcomeCardComponent } from './WelcomeCard/welcome-card.component';

@Component({
  standalone: true,
  imports: [RouterModule, WelcomeCardComponent],
  selector: 'merck-website-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
})
export class AppComponent {
  title = 'merckinator-website';
}
