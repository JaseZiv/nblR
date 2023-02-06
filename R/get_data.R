
#' Get match results for all NBL matches
#'
#' Returns a data frame of all results in either wide or long form
#' of all NBL matches played since 1979
#'
#' @param wide_or_long either 'wide' or 'long' to get either one row
#' per match, or a row for each team for each match
#'
#' @return returns a dataframe of match results
#'
#' @export
#'
#' @examples
#' try({
#' results_wide <- nbl_results(wide_or_long="wide")
#' results_long <- nbl_results(wide_or_long="long")
#' })
nbl_results <- function(wide_or_long) {
  
  if(!wide_or_long %in% c("wide", "long")) stop("Please select either, 'wide' or 'long'")
  
  if(wide_or_long == "wide") {
    dat <- .file_reader("https://github.com/JaseZiv/nblr_data/releases/download/match_results/results_wide.rds")
  } else {
    dat <- .file_reader("https://github.com/JaseZiv/nblr_data/releases/download/match_results/results_long.rds")
  }
  
  cli::cli_alert("Data last updated {attr(dat, 'nblr_timestamp')} AEST")
  
  return(dat)
  
}


#' Get shots data from the NBL
#'
#' Returns a data frame of all available shot data
#' for NBL matches played since 2015-16
#'
#' @importFrom magrittr %>%
#'
#' @return returns a dataframe of shot location data
#'
#' @export
#'
#' @examples
#' try({
#' shots <- nbl_shots()
#' })
nbl_shots <- function() {
  
  dat_df <- .file_reader("https://github.com/JaseZiv/nblr_data/releases/download/shots/shots.rds")
  
  cli::cli_alert("Data last updated {attr(dat_df, 'nblr_timestamp')} AEST")
  
  return(dat_df)
}


#' Get play-by-play data from the NBL
#'
#' Returns a data frame of all available play-by-play
#' data for NBL matches played since 2015-16
#'
#' @importFrom magrittr %>%
#'
#' @return returns a dataframe of play-by-play data
#'
#' @export
#'
#' @examples
#' try({
#' pbp <- nbl_pbp()
#' })
nbl_pbp <- function() {
  dat_urls <- paste0()
  
  dat_df <- .file_reader("https://github.com/JaseZiv/nblr_data/releases/download/pbp/pbp.rds")
  
  cli::cli_alert("Data last updated {attr(dat_df, 'nblr_timestamp')} AEST")
  
  return(dat_df)
}




#' Get team box score data from the NBL
#'
#' Returns a data frame of all available team box scores
#' data for NBL matches played since 2015-16
#'
#' @importFrom magrittr %>%
#'
#' @return returns a dataframe of team box score data
#'
#' @export
#'
#' @examples
#' try({
#' team_box <- nbl_box_team()
#' })
nbl_box_team <- function() {
  
  dat_df <- .file_reader("https://github.com/JaseZiv/nblr_data/releases/download/box_team/box_team.rds")
  
  cli::cli_alert("Data last updated {attr(dat_df, 'nblr_timestamp')} AEST")
  
  return(dat_df)
}



#' Get player box score data from the NBL
#'
#' Returns a data frame of all available player box scores
#' data for NBL matches played since 2015-16
#'
#' @importFrom magrittr %>%
#'
#' @return returns a dataframe of player box score data
#'
#' @export
#'
#' @examples
#' try({
#' player_box <- nbl_box_player()
#' })
nbl_box_player <- function() {
  
  dat_df <- .file_reader("https://github.com/JaseZiv/nblr_data/releases/download/box_player/box_player.rds")
  
  cli::cli_alert("Data last updated {attr(dat_df, 'nblr_timestamp')} AEST")
  
  return(dat_df)
}
