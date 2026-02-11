-module(p1).
-team("Wyatt Smith, Longiy Tsin").
-export([get_numData/0, not_an_integer/0, zero/0, abs_raised/1, greater_than_zero/1]).

get_numData() ->
    {ok, Num} = io:read("Enter a number: "),
    Num.

not_an_integer() ->
    io:format("not an integer~n").

zero() ->
    io:format("~p~n", [0]).

abs_raised(Input) ->
    io:format("~p~n", [math:pow(abs(Input),7)]).

fac(N) -> tail_fac(N, 1).

tail_fac(0,Acc) -> Acc;
tail_fac(N,Acc) when N > 0 -> tail_fac(N - 1, N * Acc).

greater_than_zero(Input) ->
    if
        Input rem 7 == 0 -> io:format("~p~n", [math:pow(Input, 1/5)]);
        true -> io:format("~p~n", [fac(Input)])
    end.

% ~n  is newline
% ~p  is for numeric data
% ~s  is for string data
% ~w  is for word data