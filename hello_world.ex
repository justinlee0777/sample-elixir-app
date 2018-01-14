defmodule HelloWorld do
	def hello do
		IO.puts "Hello world!"
	end
	def hello(subject) when is_binary(subject) do
		IO.puts "Hello world #{subject}!"
	end
	def hello([ h | t ]) do
		hello(h)
		hello(t)
	end
	def hello([]) do
		:ok
	end
end