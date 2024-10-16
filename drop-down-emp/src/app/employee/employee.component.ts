import { CommonModule, UpperCasePipe } from '@angular/common';
import { Component, Pipe } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { pipe } from 'rxjs';
import { ActiveProjectsPipe } from "../active-projects.pipe";
import { NgSelectModule } from '@ng-select/ng-select';

@Component({
  selector: 'app-employee',
  standalone: true,
  templateUrl: './employee.component.html',
  styleUrls: [],
  imports: [ReactiveFormsModule, CommonModule, UpperCasePipe, ActiveProjectsPipe,NgSelectModule]
})

export class EmployeeComponent {
    projectName : Iprojects[] =[
    { name: "Hilite", isActive: true },
    { name: "Lulu", isActive: true },
    { name: "Cordova School", isActive: true },
    { name: "Azure Heights Apartments", isActive: true },
    { name: "Greenfield Mall", isActive: true },
    { name: "Pinnacle Corporate Towers", isActive: true },
    { name: "Sunshine Valley Resort", isActive: true },
    { name :"Everest Office Park", isActive: false },
    { name: "Maplewood Villas", isActive: false },
    { name: "Sterling Shopping Complex", isActive: false }
  ]
  employeeForm: FormGroup;
  submitted = false;

  constructor(private fb: FormBuilder) {
    this.employeeForm = this.fb.group<IuseForm>({
      firstName: new FormControl('', Validators.required),
      lastName: new FormControl('') ,
      email:new FormControl( 
        '',
        [Validators.required, Validators.pattern(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/)],
      ),
      phoneNumber:new FormControl(
        null,
        [Validators.required, Validators.pattern('^[0-9]{10}$')],
      ),
      projectName:new FormControl(null),

      address: this.fb.group<Iadress>({
        line1 : new FormControl(''),
        line2: new FormControl(''),
        city: new FormControl(''),
      }),
    });
  }

  onSubmit() {
    if (this.employeeForm.valid) {
      this.submitted = true;
    }
  }
}
interface Iadress{
  line1:FormControl<string|null>;
  line2:FormControl<String|null>;
  city:FormControl<String|null>;

}
interface IuseForm{
  firstName:FormControl<string|null>;
  lastName:FormControl<string|null>;
  phoneNumber:FormControl<number|null>;
  projectName:FormControl<object|null>;
  email:FormControl<string|null>;
  address:FormGroup<Iadress>;
}
interface Iprojects{
name:string;
  isActive: boolean;
}