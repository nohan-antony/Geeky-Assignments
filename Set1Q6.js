let x=LeapYear(2016)
console.log(x);
function LeapYear(a){
    if(a%400==0 || a%100!=0 && a%4==0){
        return true;
    }
}