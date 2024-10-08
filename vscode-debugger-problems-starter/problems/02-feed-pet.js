/*

Fix the `feedPet` function. `feedPet` should take in a pet name and return a
function that, when invoked with a food, will return the pet's name and a list
of foods that you have fed that pet.

*/

function feedPet(name) {
  debugger
  const foods = [];
  return (food) => {
    foods.push(food)
    return "Fed " + name + " " + foods + ".";
  }
}

const feedHydra = feedPet('Hydra');

console.log(feedHydra('bones')); // Fed Hydra bones.
console.log(feedHydra('Hercules')); // Fed Hydra bones, Hercules.

const feedHippogriff = feedPet('Hippogriff');

console.log(feedHippogriff('worms')); // Fed Hydra worms.
console.log(feedHippogriff('crickets')); // Fed Hydra worms, crickets.
console.log(feedHippogriff('chicken')); // Fed Hydra worms, crickets, chicken.