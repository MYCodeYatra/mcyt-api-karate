package com.mycodeyatra.karate.generators;

import com.intuit.karate.junit5.Karate;

class GeneratorRunner {

    @Karate.Test
    Karate testGenerators() {
        return Karate.run("generators").relativeTo(getClass());
    }
}
