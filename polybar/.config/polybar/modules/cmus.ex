#!/bin/env elixir

defmodule CmusRemoteInfos do

  defp seconds_to_time(seconds) do
    %{
      seconds: rem(seconds, 60),
      minutes: div(seconds, 60)
    }
  end

  defp add_padding(int) do
    int
    |> Integer.to_string
    |> String.pad_leading(2, "0")
  end

  defp format_time(time) do
    "#{add_padding time[:minutes]}:#{add_padding time[:seconds]}"
  end

  def run do
    infos = case System.cmd("cmus-remote", ["-C", "status"]) do
      {val, 0} -> val
        |> String.split("\n")
        |> Enum.reduce(%{}, fn(str, acc) -> Map.merge(acc, cond do
            String.starts_with? str, "status" ->
              %{status: String.slice(str, 7..-1)}
            String.starts_with? str, "duration" ->
              %{duration: str |> String.slice(9..-1) |> String.to_integer |> seconds_to_time}
            String.starts_with? str, "position" ->
              %{position: str |> String.slice(9..-1) |> String.to_integer |> seconds_to_time}
            String.starts_with? str, "tag" ->
              [key, val] = str |> String.slice(4..-1) |> String.split(" ", parts: 2)
              %{String.to_atom(key) => val}
            true ->
              %{}
          end)
        end)
      {_, _} -> {:none}
    end

    IO.puts "#{infos[:artist]} - #{infos[:title]} [#{format_time(infos[:position])} / #{format_time(infos[:duration])}]"
  end
end

CmusRemoteInfos.run
