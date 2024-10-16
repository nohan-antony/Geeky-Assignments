import { NgIf } from '@angular/common';
import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'activeProjects',
  standalone: true
})
export class ActiveProjectsPipe implements PipeTransform {

  transform(value: any): any {
      return value.filter((p:any)=>p.isActive===true);
  
   
  }

}

