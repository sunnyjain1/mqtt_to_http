%%%-------------------------------------------------------------------
%% @doc mqtt_to_http public API
%% @end
%%%-------------------------------------------------------------------

-module('mqtt_to_http_app').

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    'mqtt_to_http_sup':start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================