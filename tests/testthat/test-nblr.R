
context("Testing nblR functions")


test_that("nbl_results() works", {
  testthat::skip_on_cran()
  results_wide <- nbl_results(wide_or_long="wide")
  expect_type(results_wide, "list")
  expect_true(nrow(results_wide) != 0)
  
  results_long <- nbl_results(wide_or_long="long")
  expect_type(results_long, "list")
  expect_true(nrow(results_long) != 0)
})


test_that("nbl_shots() works", {
  testthat::skip_on_cran()
  shots <- nbl_shots()
  expect_type(shots, "list")
  expect_true(nrow(shots) != 0)
  # test that the x and y location columns exist
  expect_true(c("x", "y") %in% names(shots) %>% all())
  # and that not all values in 'x' are missing
  expect_true(all(!is.na(shots$x)))
})


test_that("nbl_pbp() works", {
  testthat::skip_on_cran()
  pbp <- nbl_pbp()
  expect_type(pbp, "list")
  expect_true(nrow(pbp) != 0)
})


test_that("nbl_box_team() works", {
  testthat::skip_on_cran()
  box_team <- nbl_box_team()
  expect_type(box_team, "list")
  expect_true(nrow(box_team) != 0)
})


test_that("nbl_box_player() works", {
  testthat::skip_on_cran()
  box_player <- nbl_box_player()
  expect_type(box_player, "list")
  expect_true(nrow(box_player) != 0)
})


