namespace Utilities.Testing.Assertions {

    function Assert<'T : Eq>(value : 'T, expected : 'T) : Unit {
        if value == expected {
            Message("Test passed")
        } else {
            fail "Test failed"
        }
    }
    

}