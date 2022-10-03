
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
#' \dontrun{
#' try({
#' results_wide <- nbl_results(wide_or_long="wide")
#' results_long <- nbl_results(wide_or_long="long")
#' })
#' }
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
#' @param season season(s) data wanted for, in the format '2021-2022'
#' 
#' @importFrom magrittr %>%
#'
#' @return returns a dataframe of shot location data
#'
#' @export
#'
#' @examples
#' \dontrun{
#' try({
#' shots_2022 <- nbl_shots(season="2021-2022")
#' shots_multiple <- nbl_shots(season = c("2021-2022", "2022-2023"))
#' })
#' }
nbl_shots <- function(season) {
  dat_urls <- paste0("https://github.com/JaseZiv/nblr_data/releases/download/shots/shots_", season, ".rds")
  
  dat_df <- dat_urls %>% purrr::map_df(.file_reader)
  
  cli::cli_alert("Data last updated {attr(dat_df, 'nblr_timestamp')} AEST")
  
  return(dat_df)
}


#' Get play-by-play data from the NBL
#'
#' Returns a data frame of all available play-by-play
#' data for NBL matches played since 2015-16
#'
#' @param season season(s) data wanted for, in the format '2021-2022'
#'
#' @importFrom magrittr %>%
#'
#' @return returns a dataframe of play-by-play data
#'
#' @export
#'
#' @examples
#' \dontrun{
#' try({
#' pbp_2022 <- nbl_pbp(season="2021-2022")
#' pbp_multiple <- nbl_pbp(season = c("2021-2022", "2022-2023"))
#' })
#' }
nbl_pbp <- function(season) {
  dat_urls <- paste0("https://github.com/JaseZiv/nblr_data/releases/download/pbp/pbp_", season, ".rds")
  
  dat_df <- dat_urls %>% purrr::map_df(.file_reader)
  
  cli::cli_alert("Data last updated {attr(dat_df, 'nblr_timestamp')} AEST")
  
  return(dat_df)
}




#' Get team box score data from the NBL
#'
#' Returns a data frame of all available team box scores
#' data for NBL matches played since 2015-16
#'
#' @param season season(s) data wanted for, in the format '2021-2022'
#'
#' @importFrom magrittr %>%
#'
#' @return returns a dataframe of team box score data
#'
#' @export
#'
#' @examples
#' \dontrun{
#' try({
#' team_box_2022 <- nbl_box_team(season="2021-2022")
#' team_box_multiple <- nbl_box_team(season = c("2021-2022", "2022-2023"))
#' })
#' }
nbl_box_team <- function(season) {
  dat_urls <- paste0("https://github.com/JaseZiv/nblr_data/releases/download/box_team/box_team_", season, ".rds")
  
  dat_df <- dat_urls %>% purrr::map_df(.file_reader)
  
  cli::cli_alert("Data last updated {attr(dat_df, 'nblr_timestamp')} AEST")
  
  return(dat_df)
}



#' Get player box score data from the NBL
#'
#' Returns a data frame of all available player box scores
#' data for NBL matches played since 2015-16
#'
#' @param season season(s) data wanted for, in the format '2021-2022'
#'
#' @importFrom magrittr %>%
#'
#' @return returns a dataframe of player box score data
#'
#' @export
#'
#' @examples
#' \dontrun{
#' try({
#' player_box_2022 <- nbl_box_player(season="2022-2023")
#' player_box_multiple <- nbl_box_player(season = c("2021-2022", "2022-2023"))
#' })
#' }
nbl_box_player <- function(season) {
  dat_urls <- paste0("https://github.com/JaseZiv/nblr_data/releases/download/box_player/box_player_", season, ".rds")
  
  dat_df <- dat_urls %>% purrr::map_df(.file_reader)
  
  cli::cli_alert("Data last updated {attr(dat_df, 'nblr_timestamp')} AEST")
  
  return(dat_df)
}
