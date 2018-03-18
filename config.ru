class App
  def call(env)
    [
      200,
      { 'Content-Type' => 'text/plain' },
      ['hoge'],
    ]
  end
end

run App.new

