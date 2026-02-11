-module(p2).
-team("Wyatt Smith, Longiy Tsin").
-export([run/0]).

run() ->
    Input = p1:get_numData(),
    if
        not is_integer(Input) ->
            p1:not_an_integer(),
            run();

        Input == 0 ->
            p1:zero();

        Input < 0 ->
            p1:abs_raised(Input),
            run();

        true ->
            p1:greater_than_zero(Input),
            run()
    end.