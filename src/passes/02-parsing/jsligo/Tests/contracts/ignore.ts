type foo = { x : int; y : int };

const bar = (v : foo) => {
  let { x, y } = v;
  ignore(y);
  return { x };
};

const test = bar({ x : 1, y : 2 });
