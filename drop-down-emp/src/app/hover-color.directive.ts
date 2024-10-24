import { Directive ,
  OnInit,
  Renderer2, 
  ElementRef, 
  HostListener,
  Input,
  HostBinding,
} from '@angular/core';

@Directive({
  selector: '[appHoverColor]',
  standalone: true
})
export class HoverColorDirective {



constructor(private el:ElementRef){}

  @HostListener('mouseenter') onMouseenter(){
    this.highlight("yellow");
  }
  @HostListener('mouseleave') onMouseleave(){
    this.highlight('');
  }
  private highlight(color:string){
    this.el.nativeElement.style.backgroundColor=color;
  }

}
