This is a sinatra project with docker conatiner.

## Getting Started

Steps to run the project:

```bash
#install gems
bundle install

#create docker container with the name of weather
docker build  -t weather .

#run docker conatiner on 9292 port of puma. it will run latest wetaher conatiner.
docker run -p 9292:9292 weather:latest
```

Open [http://localhost:9292](http://localhost:9292) with your browser to see the result.


## Note:
- Due to lack of weather API, I have created CSV file and stored in db folder.
- Reading CSV data and inserting to table
- Sending back to browser table data in json format 
- Open [http://localhost:9292/data.json](http://localhost:9292/data.json) to fetch json data.