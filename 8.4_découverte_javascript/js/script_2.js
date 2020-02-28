function factorielle(input){
  let nb = input;
  let result = nb;
  if (result == 0) {
    return 1;
  } else {
    while (nb > 1) {
      nb--
      result = result * nb;
    }
    return result;
  }
}


console.log("De quel nombre veux-tu calculer la factorielle ?");
let nombre = prompt("De quel nombre veux-tu calculer la factorielle ?");
console.log(`La factorielle de ${nombre} est : ${factorielle(nombre)} !`);