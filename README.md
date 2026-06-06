# 🥋 Karate API Testing Masterclass Framework

[![Java Support](https://img.shields.io/badge/Java-17%2B-blue.svg)](https://www.oracle.com/java/)
[![Karate](https://img.shields.io/badge/Karate-1.4.1-green.svg)](https://github.com/karatelabs/karate)

This is the official companion repository for the **MyCodeYatra Karate API Testing Blog Series**. It contains a production-grade, fully functional test automation framework demonstrating everything from basic GET requests to advanced JSON payload mutations, Data-Driven Testing, Java Interoperability, UI Testing, and Mock Servers.

---

## 🛠️ Technology Stack

This framework leverages modern, enterprise-ready testing tools:
- **Core Language:** Java 17
- **Test Framework:** Karate DSL 1.4.1 (JUnit 5 Runner)
- **Reporting:** Masterthought Cucumber Reporting
- **CI/CD:** GitHub Actions

---

## 📚 The Blog Series

This repository maps directly to the concepts taught in our comprehensive 10-part blog series on [MyCodeYatra](https://mycodeyatra.com).

| # | Topic / Article Title | Status |
|---|----------------------|--------|
| 1 | Introduction to Karate & Rest API Setup | ✅ Completed |
| 2 | First Test: Setup & Assertions | ✅ Completed |
| 3 | Advanced JSON/XML Path Expressions | ✅ Completed |
| 4 | Calling other Feature Files | ✅ Completed |
| 5 | Data-Driven Testing using CSV | ✅ Completed |
| 6 | Reading JSON Payloads from Files | ✅ Completed |
| 7 | Type Conversion & Data Generators | ✅ Completed |
| 8 | Karate UI Testing & API Combinations | ✅ Completed |
| 9 | Parallel Execution & Generating Cucumber Reports | ✅ Completed |
| 10 | CI/CD Integration & Mocking with Karate | ✅ Completed |

---

## 🚀 How to Run Locally

### 1. Pre-requisites
- **Java Development Kit (JDK):** Version 17 or higher.
- **Maven:** Installed and configured in your system PATH.
- **NodeJS Mock Server:** To test against our local API, start the mock server (`node index.js`) from the `myct-api-test-server` repository on port `8080`.

### 2. Execution

To execute the entire Karate suite via Maven concurrently, run:
```bash
mvn clean test -Dtest=ParallelRunner
```

### 3. Viewing HTML Reports
After executing the tests using `ParallelRunner`, the Masterthought Cucumber HTML reports are generated automatically. 
Open `target/cucumber-html-reports/overview-features.html` in your browser.

---

## 🏗️ Framework Architecture

- `src/test/java/com/mycodeyatra/karate/`: Contains the actual feature files grouped by topic (intro, setup, datadriven, payloads, generators, ui, mock, etc.).
- `src/test/java/com/mycodeyatra/karate/karate-config.js`: The global Karate configuration file.
- `src/test/java/com/mycodeyatra/karate/ParallelRunner.java`: The JUnit 5 runner for executing all feature files in parallel and generating reports.
- `.github/workflows/`: Contains the CI/CD pipeline definitions for GitHub Actions.

---

**Developed with ❤️ by the MyCodeYatra Team.**
