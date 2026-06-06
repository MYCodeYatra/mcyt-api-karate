package com.mycodeyatra.karate.setup;

import com.intuit.karate.junit5.Karate;

class SetupRunner {

    @Karate.Test
    Karate testSetup() {
        // Run tests parallelly or tag-based configuration
        return Karate.run("setup").relativeTo(getClass());
    }
}
