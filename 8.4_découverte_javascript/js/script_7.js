function acneBot(){
  let speaker = "";
  while (speaker !== "Q") {
    speaker = prompt("Dites quelques choses à l'Acné-bot (Q pour quitter)");
    console.log(`Vous : \"${speaker}\"`)
    if (speaker.toLowerCase().includes("fortnite")) {
    console.log("Acné-Bot : \"on s' fait une partie soum-soum ?\"");
    } else if (speaker.endsWith("?")) {
      console.log("Acné-Bot : \"Ouais ouais...\"");
    } else if (speaker === "Q") {
      console.log("Acné-Bot : \"Ciao boloss\"");
    } else if (speaker === "") {
      console.log("Acné-Bot : \"t'es en PLS ?\"");
    } else if (speaker === speaker.toUpperCase()) {
      console.log("Acné-Bot : \"Pwa, calme-toi...\"");
    } else {
      console.log("Acné-Bot : \"balek.\"");
    }
  }
}

console.log("Acné-Bot : \"Qu'est ce que tu fous dans ma chambre virtuelle toi ?!\"");
acneBot();
