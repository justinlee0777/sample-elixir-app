defmodule Hello do
	@moduledoc """
	Documentation for Hello, a module for printing various "Hello" messages.
	"""

	@doc """
	Prints "Hello world!".

	## Example
	iex > Hello.hello
	"""
	def hello do
		hello("world")
	end

	@doc """
	Prints "Hello" to a user-specified string appended to the end.
	## Example
	iex > Hello.hello "Joe"
	"""
	def hello(subject) when is_binary(subject) do
		IO.puts "Hello #{subject}!"
	end

	@doc """
	Prints multiple "Hellos" if given a list.
	## Example
	iex > Hello.hello [ "Joe", "Joni" ]
	"""
	def hello([ h | t ]) do
		hello(h)
		hello(t)
	end

	@doc """
	Does nothing if an empty list is the first argument.
	"""
	def hello([]) do
		:ok
	end
end