import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { ReactiveFormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './components/home/home.component';
import { NavbarComponent } from './components/navbar/navbar.component';
import { RegisteruserComponent } from './components/registeruser/registeruser.component';
import { LoginuserComponent } from './components/loginuser/loginuser.component';

@NgModule({
  declarations: [
    AppComponent,
    RegisteruserComponent,
    HomeComponent,
    NavbarComponent,
    LoginuserComponent
  ],
  imports: [
    BrowserModule,
    ReactiveFormsModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
