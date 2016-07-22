create_example_input_data <- function(row_names, column_names) {
    data <- as.data.frame(matrix(
        ncol = length(column_names),
        nrow = length(row_names)))
    colnames(data) <- column_names
    rownames(data) <- row_names
    data
}
