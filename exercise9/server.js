const express = require("express");
const app = express();

app.use(express.json());

function isPrime(num) {
  if (num <= 1) return false;
  if (num <= 3) return true;

  if (num % 2 === 0 || num % 3 === 0) return false;

  for (let i = 5; i * i <= num; i += 6) {
    if (num % i === 0 || num % (i + 2) === 0) return false;
  }
  return true;
}

function checkPrimePromise(num) {
  return new Promise((resolve) => {
    const result = isPrime(num);
    resolve(result);
  });
}

// exercise 3.0
app.post("/is-prime", async (req, res) => {
  const { number } = req.body;

  if (number === undefined || typeof number !== "number") {
    return res.status(400).json({ error: "Podaj liczbę w polu 'number'" });
  }

  const isPrimeResult = await checkPrimePromise(number);

  res.json({
    number: number,
    isPrime: isPrimeResult,
  });
});

const PORT = 8080;
app.listen(PORT, "0.0.0.0", () => {
  console.log(`Serwer działa`);
});
