defmodule CensoredStrings do
  def uncensor(string, vowels) do
    vowels
    |> String.codepoints()
    |> Enum.reduce(string, &replace_asterisk/2)
  end

  defp replace_asterisk(vowel, string) do
    String.replace(string, "*", vowel, global: false)
  end
end
