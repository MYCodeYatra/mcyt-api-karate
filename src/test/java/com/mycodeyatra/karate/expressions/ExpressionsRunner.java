package com.mycodeyatra.karate.expressions;

import com.intuit.karate.junit5.Karate;

class ExpressionsRunner {

    @Karate.Test
    Karate testExpressions() {
        return Karate.run("expressions").relativeTo(getClass());
    }
}
