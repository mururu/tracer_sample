defmodule Sample do
  def run do
    s = self
    spawn(fn()-> :timer.sleep(1000); s <- { :ok, 1 }  end)
    :timer.sleep(2000);
    spawn(fn()-> :timer.sleep(1000); s <- { :ok, 2 }  end)
    :timer.sleep(2000);
    spawn(fn()-> :timer.sleep(1000); s <- { :ok, 3 }  end)
    :timer.sleep(2000);
    spawn(fn()-> :timer.sleep(1000); s <- { :ok, 4 }  end)
    :timer.sleep(2000);
    spawn(fn()-> :timer.sleep(1000); s <- { :ok, 5 }  end)
    :timer.sleep(2000);
    spawn(fn()-> :timer.sleep(1000); s <- { :ok, 6 }  end)
    :timer.sleep(2000);
    spawn(fn()-> :timer.sleep(1000); s <- { :ok, 7 }  end)
    :timer.sleep(2000);
    spawn(fn()-> :timer.sleep(1000); s <- { :ok, 8 }  end)
    :timer.sleep(2000);
    spawn(fn()-> :timer.sleep(1000); s <- { :ok, 9 }  end)
    :timer.sleep(2000)
    spawn(fn()-> :timer.sleep(1000); s <- :exit end)
    rec
  end

  def rec do
    receive do
      { :ok , i } ->
        rec
      :exit ->
        IO.puts 'finish'
    end
  end
end
