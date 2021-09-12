require 'json'
require 'sinatra'

get '/' do
    erb :index
end

get '/data.json' do
    content_type :json
    {entries: DB[:forecasts].all }.to_json
end

post '/load' do
    Loader.new.load!
    redirect "/data.json"
end

__END__
@@ layout 
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Weather Loader</h1>
    <%=yield%>
</body>
</html>

@@ index
<form action="/load" method="POST">
    <input type="submit" value="Load Forecasts">
</form>