create_example_input_data <- function(row_names, column_names) {
    as.data.frame(matrix(ncol = length(column_names), nrow = length(row_names)))
}
