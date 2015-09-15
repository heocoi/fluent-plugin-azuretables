# Azure Tables output plugin for [Fluentd](http://www.fluentd.org/)

## Installation

```ruby
fluent-gem install fluent-plugin-azuretables
```

## Usage

### Configuration
```
<match azuretables.**>
  type azuretables
  account_name AZURE_STORAGE_ACCOUNT
  access_key AZURE_STORAGE_ACCESS_KEY
  table YOUR_TABLE_NAME
  detach_process 6
  create_table_if_not_exists false
  partition_keys test-partition-key-01,test-partition-key-02
  row_keys rk1 test-row-key-01,test-row-key-02
  key_delimiter __
</match>
```

* type (required) - azuretables
* account_name (required) - AZURE_STORAGE_ACCOUNT (from your Azure portal).
* access_key (required) - AZURE_STORAGE_ACCESS_KEY (from your Azure portal).
* table (required) - table name where you want to store event records.
* detach_process (optional) - number of processes. You can launch multiprocessing if you need high throughput.
* create_table_if_not_exists (optional) - Set __true__ if you want create table if it doesn't exist. Default: __false__.
* partition_keys (optional) - A string with comma delimiter.List of properties which are used to create a composite __PartitionKey__.
* row_keys (optional) - A string with comma delimiter.List of properties which are used to create a composite __RowKey__.
* key_delimiter (optional) - A string becomes delimiter of partition key and row key in table. Default: "__" (underscores x2)

## TODO

## Contributing
Bug reports and pull requests are welcome on GitHub at [https://github.com/heocoi/fluent-plugin-azuretables](https://github.com/heocoi/fluent-plugin-azuretables).
