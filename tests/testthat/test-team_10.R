context("test-team_10")

test_that("takes in correct path", {
    # expect an error due to incorrect path
    expect_error(team_10(c(8, 13), 0.01))

    # expect an error due to incorrect path
    expect_error(team_10("testing", 0.01))
})


test_that("tolerance is correct", {
    # expect error due to tolerance out of range
    expect_error(team_10(file = "./data/gadm36_AUS_shp/gadm36_AUS_1.shp", 13))
})


test_that("output is dataframe", {
    # expect data frame
    expect_s3_class(team_10("./data/gadm36_AUS_shp/gadm36_AUS_1.shp", 0.01), "data.frame")
})
