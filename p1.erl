-module(p1).
-team("Wyatt Smith, Longiy Tsin").
-export([get_numData/0]).

get_numData() ->
    {ok, Num} = io:read("Enter a number: "),
    io:format("The number you entered is: ~w~n", [Num]).