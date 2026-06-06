package com.mycodeyatra.karate.mock;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.core.MockServer;
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

class MockRunner {

    @Test
    void testMock() {
        // Start the Mock Server programmatically on port 0 (random open port)
        MockServer server = MockServer
                .feature("classpath:com/mycodeyatra/karate/mock/mock.feature")
                .http(0).build();
        
        int port = server.getPort();

        // Run the test feature and pass the dynamic port into Karate
        Results results = Runner.path("classpath:com/mycodeyatra/karate/mock/test-mock.feature")
                .systemProperty("mockPort", port + "")
                .parallel(1);

        // Assert tests passed
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
        
        // Stop the mock server
        server.stop();
    }
}
