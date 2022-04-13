

defmodule Demo.Impo.Import do
  import Demo.Impo.Mod1
  import Demo.Impo.Mod2

  def run do 
    mod1_run()
    mod2_run()
  end

end

defmodule Demo.Impo.Alias do
  alias Demo.Impo.Mod1, as: M1
  alias Demo.Impo.Mod2, as: M2

  def run do
    M1.mod1_run()
    M2.mod2_run()
  end
end

defmodule Demo.Impo.Use do
  use Demo.Impo.MyImports

  def run do
    my_fun()
  end
end
