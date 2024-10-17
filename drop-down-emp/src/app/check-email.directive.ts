import { Directive, ElementRef, Input, TemplateRef, ViewContainerRef } from '@angular/core';

@Directive({
  selector: '[appCheckEmail]',
  standalone: true
})
export class CheckEmailDirective {
@Input() set appCheckEmail(email:string){
  if(email.includes('gmail.com')){
    this.vcr.createEmbeddedView(this.tRef)
  }
  else{
    this.vcr.clear();
  }
}
constructor(private tRef:TemplateRef<string>,private vcr :ViewContainerRef){}
  }




