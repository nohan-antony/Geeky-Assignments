import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';

@Component({
  selector: 'app-employee',
  standalone: true,
  templateUrl: './employee.component.html',
  styleUrls: [],
  imports:[ReactiveFormsModule,CommonModule]
})

export class EmployeeComponent {
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
  email:FormControl<string|null>;
  address:FormGroup<Iadress>;
}