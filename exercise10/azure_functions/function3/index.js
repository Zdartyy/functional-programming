//funkcja odwracania stringa
module.exports = async function (context, req) {
  const text = req.query.text || (req.body && req.body.text) || "";
  context.res = {
    body: text.split("").reverse().join(""),
  };
};
