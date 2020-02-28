const entrepreneurs = [
  { first: 'Steve', last: 'Jobs', year: 1955 },
  { first: 'Oprah', last: 'Winfrey', year: 1954 },
  { first: 'Bill', last: 'Gates', year: 1955 },
  { first: 'Sheryl', last: 'Sandberg', year: 1969 },
  { first: 'Mark', last: 'Zuckerberg', year: 1984 },
  { first: 'Beyonce', last: 'Knowles', year: 1981 },
  { first: 'Jeff', last: 'Bezos', year: 1964 },
  { first: 'Diane', last: 'Hendricks', year: 1947 },
  { first: 'Elon', last: 'Musk', year: 1971 },
  { first: 'Marissa', last: 'Mayer', year: 1975 },
  { first: 'Walt', last: 'Disney', year: 1901 },
  { first: 'Larry', last: 'Page', year: 1973 },
  { first: 'Jack', last: 'Dorsey', year: 1976 },
  { first: 'Evan', last: 'Spiegel', year: 1990 },
  { first: 'Brian', last: 'Chesky', year: 1981 },
  { first: 'Travis', last: 'Kalanick', year: 1976 },
  { first: 'Marc', last: 'Andreessen', year: 1971 },
  { first: 'Peter', last: 'Thiel', year: 1967 }
];


console.log("\n# Voici les entrepreneurs qui sont nés dans les années 70 :");
entrepreneurs.forEach((boss) => {
    if (boss.year > 1969 && boss.year < 1980){
    console.log(boss.first + " " + boss.last);
  }
});
// console.log(entrepreneurs.filter(boss => boss.year > 1969 && boss.year < 1980));

console.log("\n# Voici une array qui contient le prénom et le nom des entrepreneurs :");
let name = []
entrepreneurs.forEach((boss) => {
  let firstAndLast = (boss.first + " " + boss.last);
  name.push(firstAndLast);
});
console.log(name);
// console.log(entrepreneurs.map(boss => boss.first + " " + boss.last));

console.log("\n# Quel âge aurait chaque inventeur aujourd'hui ?");
entrepreneurs.forEach((boss) => {
  let ageToday = 2020 - boss.year;
  console.log(`${boss.first + " " + boss.last} aurait ${ageToday} ans aujourd'hui !`);
});
// entrepreneurs.map(boss => console.log(boss.first + " " + boss.last + " aurait " + (2020 - boss.year) + " ans."));

console.log("\n# Voici les entrepreneurs par ordre alphabétique du nom de famille :");
console.log(entrepreneurs.sort((a, b) => a.last.toLowerCase().localeCompare(b.last.toLowerCase())));