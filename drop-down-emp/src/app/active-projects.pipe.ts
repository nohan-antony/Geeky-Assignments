import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'activeProjects',
  standalone: true
})
export class ActiveProjectsPipe implements PipeTransform {

  transform(value: string, checkvalue: boolean): any {
    if(checkvalue===true){
      return value;
    }
  }

}

