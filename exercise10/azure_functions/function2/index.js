module.exports = async function (context, req) {
  const max = Number.MAX_SAFE_INTEGER;
  const min = 0;

  const randomVal = Math.floor(Math.random() * (max - min + 1)) + min;

  context.res = {
    body: {
      value: randomVal,
      min: min,
      max: max,
      comment: "Wartość losowa z zakresu 0 do Number.MAX_SAFE_INTEGER włącznie",
    },
  };
};
