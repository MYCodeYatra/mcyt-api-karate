package com.mycodeyatra.karate.reusable;

import com.intuit.karate.junit5.Karate;

class CallerRunner {

    @Karate.Test
    Karate testCaller() {
        return Karate.run("caller").relativeTo(getClass());
    }
}
