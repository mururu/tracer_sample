defmodule Sample do
  def sp do
    s = self
    spawn(fn()-> :timer.sleep(1000); s <- { :ok, 1 }  end)
    :timer.sleep(2000);
    spawn(fn()-> :timer.sleep(1000); s <- { :ok, 2 }  end)
    :timer.sleep(2000);
    spawn(fn()-> :timer.sleep(1000); s <- { :ok, 3 }  end)
    :timer.sleep(2000);
    spawn(fn()-> :timer.sleep(1000); s <- { :ok, 4 }  end)
    rec
  end

  def rec do
    receive do
      { :ok , i } ->
        rec
    end
  end
end
