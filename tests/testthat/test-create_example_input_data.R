context("create_example_input_data")

row_names <- c("snp1", "snp2")
column_names <- c("id1", "id2", "id3")
data <- create_example_input_data(row_names = row_names, column_names = column_names)

test_that("columns", {
    expect_equal(colnames(data), column_names)
})

test_that("rows", {
    expect_equal(rownames(data), row_names)
})

test_that("we get a matrix", {
    expect_equal(class(data), "matrix")
})

test_that("we get a bunch of doubles", {
    expect_equal(typeof(data), "double")
})

test_that("there are no missings", {
    expect_false(anyNA(data))
})

test_that("there is variation in the data", {
    expect_gt(var(as.vector(data)), 0)
})
