//funkcja dodawania
module.exports = async function (context, req) {
  const a = req.query.a || (req.body && req.body.a);
  const b = req.query.b || (req.body && req.body.b);

  context.res = {
    body: `Wynik dodawania: ${Number(a) + Number(b)}`,
  };
};
