import { LightningElement, track } from 'lwc';

export default class Calculator extends LightningElement {
inpVal = 0;
inpVal2 = 0;
result = 0;
operator ="";
handleButtonClick(event){
//   let val = event.target.value;
//   let num = event.target.name;
//   this.inpVal += val ;
//   if(num === "=") {
//     if(this.inpVal.indexOf("+") > -1) {
//       let inpValue = this.value;
//       let val2 = inpValue.Split("+");
//       val2.forEach((ele) => {
//         this.result = this.result + Number(ele);
      
//       });
//       console.log("result",this.result);
//       this.inpVal = "";
//       this.inpVal = this.result;
//     }
//     this.inpVal.replace("=");
//     let sum = this.inpVal;
//     console.log("sum",sum);
//   }
//   else if(val === "CE"){
//     this.inpVal = "";
//     this.result = 0;
//   }

this.inpVal1 = ""+ this.inpVal1+event.target.value;
console.log(this.inpVal1);
}
// if(operator === "+"){
//    result = inpVal + inpVal;
// }
handleAddition(event){
    this.result = parseInt(this.inpVal1)+parseInt(this.inpVal2);
}
}


