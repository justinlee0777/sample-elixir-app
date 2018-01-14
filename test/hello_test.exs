defmodule HelloWorldTest do
	use ExUnit.Case
	doctest Hello

	import ExUnit.CaptureIO
	require Logger

	test "greets the world" do
		assert capture_io(fn ->
			Hello.hello()
		end) =~ "Hello world!"
	end

	test "greets Joe" do
		assert capture_io(fn ->
			Hello.hello("Joe")
		end) =~ "Hello Joe!"
	end

	test "greets Joe and Joni" do
		func = fn ->
			Hello.hello(["Joe", "Joni"])
		end
		assert capture_io(func) =~ "Hello Joe!"
		assert capture_io(func) =~ "Hello Joni!"
	end
end
