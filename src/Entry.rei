type numberConfig('a) = {
  min: 'a,
  max: 'a,
  initial: 'a,
  step: 'a,
};

type stringConfig = string;

type boolConfig = bool;

type demoUnit = {
  string: (string, stringConfig) => string,
  int: (string, numberConfig(int)) => int,
  float: (string, numberConfig(float)) => float,
  bool: (string, boolConfig) => bool,
};

type demo = {
  add: (string, Configs.demoUnit => React.element) => unit,
};

let demo: (Belt.MutableMap.String.key, demo => unit) => unit;

let start: unit => unit;
