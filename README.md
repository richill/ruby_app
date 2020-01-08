# Ruby App

Receives a log file (webserver.log is provided) and returns:

1. A list of webpages with most page views ordered from most pages views to less page views

2. A list of webpages with most unique page views also ordered

## Usage

```
irb -r ./lib/parser.rb
```

> For the list of visits:
```
data = Parser.new
data.number_of_visits
```
> For the lsit of unique visits:
```
data = Parser.new
data.most_unique_page_views
```

## Specs

```
rspec spec/parser_spec.rb 
```