package com.mycodeyatra.karate.datadriven;

import com.intuit.karate.junit5.Karate;

class DataDrivenRunner {

    @Karate.Test
    Karate testDataDriven() {
        return Karate.run("datadriven").relativeTo(getClass());
    }
}
