function arnInAcidsConvert(arn){
  let acids = [];
  arn.match(/.{1,3}/g).forEach((codon) => {
    if (codon === "UCU" || codon === "UCC" || codon === "UCA" || codon === "UCG" || codon === "AGU" || codon === "AGC") {
      acids.push("Sérine");
    } else if (codon === "CCU" || codon === "CCC" || codon === "CCA" || codon === "CCG") {
      acids.push("Proline");
    } else if (codon === "UUA" || codon === "UUG") {
      acids.push("Leucine");
    } else if (codon === "UUU" || codon === "UUC") {
      acids.push("Phénylalanine");
    } else if (codon === "CGU" || codon === "CGC" || codon === "CGA" || codon === "CGG" || codon === "AGA" || codon === "AGG") {
      acids.push("Arginine");
    } else if (codon === "UAU" || codon === "UAC") {
      acids.push("Tyrosine");
    } else {
      acids.push(codon);
    }
  });
  return acids.join('-');
}

let arn1 = "CCGUCGUUGCGCUACAGC";
let arn2 = "CCUCGCCGGUACUUCUCG";

console.log(`Les acides aminés qui composent l'ARN \"${arn1}\" sont :`);
console.log(arnInAcidsConvert(arn1));

console.log(`\nLes acides aminés qui composent l'ARN \"${arn2}\" sont :`);
console.log(arnInAcidsConvert(arn2));

