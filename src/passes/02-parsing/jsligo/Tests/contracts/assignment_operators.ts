function addeq () : [int, int, int] {
    let a = 2;
    let b = 4;
    a += b += 5;
    let c = 3;
    c += 2;
    return [a, b, c];  // should be [11, 9, 5]
}

function mineq () : [int, int, int] {
    let a = 30;
    let b = 20;
    a -= b -= 5;
    let c = 3;
    c -= 2;
    return [a, b, c]; // should be [15, 15, 1]
}

function diveq () : [int, int, int] {
    let a = 20;
    let b = 20;
    a /= b /= 5;
    let c = 6;
    c /= 2;
    return [a, b, c]; // should be  [5, 4, 3]
}

function multeq () : [int, int, int] {
    let a = 20;
    let b = 20;
    a *= b *= 5;
    let c = 6;
    c *= 2;
    return [a, b, c]; // should be  [2000, 100, 12]
}

function resteq () : [nat, nat, nat] {
    let a = 14 as nat;
    let b = 13 as nat;
    a %= b %= 5;
    let c = 5 as nat;
    c %= 2;
    return [a, b, c]; // should be  [2, 3, 1]
}
