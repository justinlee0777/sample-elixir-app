-module(hello_world).
-compile(export_all).
main() ->
	io:format("~s~n", ["Hello world!"]).