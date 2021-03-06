#' List all known devices
#'
#' @param token Token obtained with \code{\link{signIn}}
#' @param as_df If TRUE a data frame is returned, if FALSE a list is returned.
#'
#' @return A data frame or list with serial number, name, active and disabled indicators.
#' @export
#'
#' @examples token <- "123456789"
#' listDevices(token, as_df = TRUE)
listDevices <- function(token, as_df = TRUE) {

    base_url <- "https://api.timeular.com/api/v1/"
    bearer_token <- paste("Bearer", token)

    resp <- httr::GET(
        url = paste0(base_url, "devices"),
        httr::add_headers(Authorization = bearer_token)
    )

    # Status and stop execution if status different from 200
    status <- httr::status_code(resp)
    if (status != 200) stop("Something went wrong! Error code ", status)

    # Parse response
    parsed <- httr::content(resp, type = "application/json")

    # If as_df is TRUE
    if ( as_df ) {

        result <- lapply(parsed$devices, function(entry) {

            data.frame(
                serial = ifelse(is.null(entry$serial), NA, entry$serial),
                name = ifelse(is.null(entry$name), NA, entry$name),
                active = ifelse(is.null(entry$active), NA, entry$active),
                disabled = ifelse(is.null(entry$disabled), NA, entry$disabled),
                stringsAsFactors = FALSE
            )

        })

        result <- do.call(rbind, result)

    }

    return(result)
}
