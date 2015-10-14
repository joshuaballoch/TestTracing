class Test
  def call
    set_trace_func proc { |event, file, line, id, binding, classname|
      if event == "call"
        unless file =~ /rubies|gems/
          printf "%8s %s:%-2d %10s %8s\n", event, file, line, id, classname
        end
      end
    }

    s = "asdf"
    s << "hoiasdfoisfadioh"
    r = Someclass.new
    r.blah
  end
end
