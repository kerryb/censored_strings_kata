defmodule CensoredStringsTest do
  use ExUnit.Case
  import CensoredStrings

  describe "CensoredStrings.uncensor/1" do
    test "replaces the *s with the supplied vowels" do
      assert uncensor("Wh*r* d*d my v*w*ls g*?", "eeioeo") == "Where did my vowels go?"
    end

    test "works with no vowels." do
      assert uncensor("abcd", "") == "abcd"
    end

    test "works with uppercase" do
      assert uncensor("*PP*RC*S*", "UEAE") == "UPPERCASE"
    end

    test "works with * at the end" do
      assert uncensor("Ch**s*, Gr*mm*t -- ch**s*", "eeeoieee") == "Cheese, Grommit -- cheese"
    end

    test "Works with * at the start" do
      assert uncensor("*l*ph*nt", "Eea") == "Elephant"
    end
  end
end
