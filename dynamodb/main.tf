resource "aws_dynamodb_table" "mylibrary" {
  name         = "collection"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "book_name"
    type = "S"
  }
  attribute {
    name = "author_name"
    type = "S"
  }
  attribute {
    name = "year"
    type = "N"
  }

  # Define the primary key with only the hash key
  hash_key = "book_name"

  # Define a Global Secondary Index
  global_secondary_index {
    name               = "AuthorIndex"
    hash_key           = "author_name"
    range_key          = "year"
    projection_type    = "ALL" # This specifies that all attributes are projected into the index
    read_capacity      = 5    # Adjust based on your read requirements
    write_capacity     = 5    # Adjust based on your write requirements
  }
}

resource "aws_dynamodb_table_item" "books" {
  table_name = aws_dynamodb_table.mylibrary.name
  hash_key   = aws_dynamodb_table.mylibrary.hash_key

  item = jsonencode({
    "book_name" : { "S": "Dune" },
    "author_name" : { "S": "Frank Herbert" },
    "year" : { "N": "1965" }
  })
}

