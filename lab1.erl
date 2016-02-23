-module(lab1).
-export([fac/1, fib/1, member/2, cost/1]).

fac(0)->1;
fac(1)->1;
fac(N)->
	N * fac(N - 1).

fib(1)->0;
fib(2)->1;
fib(N)->
	fib(N - 1) + fib(N - 2).

member([], _)->false;
member([H|_], H)->true;
member([H|T], M)->
	member(T, M).

price(apple)->100;
price(pear)->150;
price(milk)->70;
price(beef)->400;
price(pork)->300.

cost(L)->
	cost(L, 0).
cost([], M)->M;
cost([{G, C}|T], M)->
	cost(T, M + price(G) * C).
