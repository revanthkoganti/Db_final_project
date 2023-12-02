import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';



import { RegisteruserComponent } from './components/registeruser/registeruser.component';
import { LoginuserComponent } from './components/loginuser/loginuser.component';
import { HomeComponent } from './components/home/home.component';




const routes: Routes = [
  {path:'home',component:HomeComponent},
  { path: 'registeruser', component: RegisteruserComponent },
  {path:'loginuser',component:LoginuserComponent},
  { path: '', redirectTo: '/home', pathMatch: 'full' },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
