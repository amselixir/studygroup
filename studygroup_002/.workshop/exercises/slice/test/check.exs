defmodule Workshop.Exercise.SliceCheck do
  use Workshop.Validator

  verify "vegetables are sliced into 3" do
    (Enum.count(Slicer.chop([:vegetable])) == 3 && :ok) || {:error, "expected Slicer.chop([:vegetable]) == 3 vegetable slices, got #{inspect Slicer.chop([:vegetable])}"}
  end

  verify "meat is diced into 6" do
    (Enum.count(Slicer.chop([:meat])) == 6 && :ok) || {:error, "expected Slicer.chop([:meat]) == 6 meat dices, got #{inspect Slicer.chop([:meat])}"}
  end

  verify "verify something else" do
    :ok
  end
end
