function pyramid(){
  let etage = ""
  let i = 1;
  while (etage <= 0){
    etage = prompt("Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?");
    if (etage == 0) {
      console.log("\n\n  |-------------------------------------------------------------|");
      console.log('  | "...zZzzz..zZzz...zZz...Hum ?! what ! Du JavaScript ?!      |');
      console.log("  | Pourquoi pas après tout... Courage moussaillon !            |");
      console.log('  |-------------------------------------------------------------|');
      console.log('                                           |');
      console.log('                                           |');
      console.log('                                           |_____________   _/)/)');
      console.log('                                                           (-.- )');
      console.log("                                                         (\")(\")_o\n");
    } else if (etage < 0) {
      console.log("Mauvaise commande... je ne construis pas de pyramides négatives !!!");
    } else {
      while (i != (etage+1)) {
        if ((etage-i) < 0) {
          break;
        }
        console.log(`${" ".repeat(etage-i) + "#".repeat(i)}`);
        i++;
      }
    }
  }

}


console.log("Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?");
pyramid();