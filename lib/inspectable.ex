defprotocol Inspectable do
  @fall_back_to_any true
  def dump(element)
  end

  defimpl Inspectable, for: BitString do
    def dump(string) do
      "STRING: #{string}"
    end
  end

  defimpl Inspectable, for: Integer do
    def dump(0), do: "ZERO!"
    def dump(integer) do
      "Integer: #{integer}"
    end
  end

  defimpl Inspectable, for: Any do
    def dump(_) do
      "A Random Element"
    end
  end

  defimpl Inspectable, for: Point do
    def dump(%Point{x: x, y: y, z: z}) do
      "Point: #{x}, #{y}, #{z}"
    end
  end
