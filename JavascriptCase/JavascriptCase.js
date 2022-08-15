function oddishOrEvenish(number) {
  let sum = 0;
  number = number.toString();

  for (let i = 0; i < number.length; i++) {
    sum += +number[i];
  }

  return sum % 2 !== 0 ? "Odd" : "Even";
}

console.log(oddishOrEvenish(43));
console.log(oddishOrEvenish(373));
console.log(oddishOrEvenish(4433));
console.log(oddishOrEvenish(45));
console.log(oddishOrEvenish(44));
console.log(oddishOrEvenish(12));
