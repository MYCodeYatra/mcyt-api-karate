package com.mycodeyatra.karate.generators;

import java.util.UUID;

public class DataGenerator {
    
    // A simple static method to generate a random email
    public static String getRandomEmail() {
        return "user_" + UUID.randomUUID().toString().substring(0, 8) + "@mycodeyatra.com";
    }
}
