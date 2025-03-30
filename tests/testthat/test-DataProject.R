# test-DataProject.R - Testing the DataProject class

describe( "DataProject()", {
    it( "Smoke test", {
        expect_no_condition( obj <- DataProject() )
        expect_s3_class( obj, "DataProject" )
        expect_s3_class( obj, "list" )
    })
})
