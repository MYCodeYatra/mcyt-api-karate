package com.mycodeyatra.karate.payloads;

import com.intuit.karate.junit5.Karate;

class PayloadRunner {

    @Karate.Test
    Karate testPayloads() {
        return Karate.run("payloads").relativeTo(getClass());
    }
}
