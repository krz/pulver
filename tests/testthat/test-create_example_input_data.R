context("create_example_input_data")

row_names <- c("snp1", "snp2")
column_names <- c("id1", "id2", "id3")
data <- create_example_input_data(row_names = row_names, column_names = column_names)

test_that("columns", {
    expect_equal(ncol(data), length(column_names))
})

test_that("rows", {
    expect_equal(nrow(data), length(row_names))
})

test_that("we get a data.frame", {
    expect_equal(class(data), "data.frame")
})
