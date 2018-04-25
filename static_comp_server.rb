require 'rack'

class StaticCompServer
  def self.call(env)
    css
    index
  end

  def self.css1
    [200, { 'Content-Type' => 'text/css' }, [File.read("./public/reset.css")]]
  end

  def self.css
    [200, { 'Content-Type' => 'text/css' }, [File.read("./public/main.css")]]
  end

  def self.index
    [200, { 'Content-Type' => 'text/html' }, [File.read("./views/index.html")]]
  end
end
