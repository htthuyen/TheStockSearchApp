
# The Stock Search App

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description

The Stock Search App allows users to search for a stock by its ticker symbol and instantly view real-time market data, including company name, price, exchange, and currency

## API Key Setup

This app requires an API key for stock data. **Do not commit your API key to the repository.**

1. Create a file named `Secrets.swift` in the `StockSearchApp` directory:
  ```swift
  struct Secrets {
    static let apiKey = "YOUR_API_KEY_HERE"
  }
  ```
2. Replace `YOUR_API_KEY_HERE` with your actual API key.
3. Make sure `Secrets.swift` is listed in `.gitignore` so it is not tracked by git.
4. If you accidentally commit your API key, revoke it immediately and generate a new one.

## Contributing

If you fork or clone this repository, you must provide your own API key in `Secrets.swift` as described above. The app will not work without a valid key.

### App Evaluation
   - **Category:** Finance
   - **Mobile:** Provides fast, on-the-go access to real-time stock data. The app is designed for mobile-first interactions — optimized for quick lookup with minimal input. Potential to integrate notifications for price alerts or voice input for ticker search to enhance mobile-native features.
   - **Story:** Empowers individual investors and casual market watchers with a simple tool to stay informed about stock performance anytime, anywhere. Especially useful for people who follow multiple tickers but don’t want the complexity of a full trading app.
   - **Market:** The app targets a wide base of users — from beginner investors and finance students to hobbyists and traders who want a lightweight solution. 
   - **Habit:** Users are likely to open the app daily or even multiple times a day during market hours to track favorite stocks. While primarily a consumption-based app, it could become more engaging by allowing users to build and follow a watchlist.
   - **Scope:** Technically feasible to build within a short timeframe using a stock API like API Ninjas. A basic MVP (search + display stock info) is simple yet valuable. The product scope is clearly defined and can be expanded after MVP (e.g., add favorites, charts, price alerts, or earnings calendar).

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can search a stock by enter ticker symbol to a search bar
* User can view stock information such as current price, low, high, etc
* User can get a notification when invalid ticker symbol or not found

**Optional Nice-to-have Stories**

* User can have their favorite stock list
* User can use voice input to enter the ticker symbol


### 2. Screen Archetypes

- [x] Search Screen
* User can search a stock by enter ticker symbol to a search bar
* User can get a notification when invalid ticker symbol or not found

- [x] Stock Details Screen
* User can view stock information such as current price, low, high, etc



### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Search Stock


**Flow Navigation** (Screen to Screen)

- [x] Search Screen
=> Stock Details Screen

- [x] Stock Details Screen
=> Search Screen



## Wireframes

<img width="600" height="3024" alt="image" src="https://github.com/user-attachments/assets/1c4b0cdd-5f03-4229-b968-482c4ea763b4" />


## Schema

<div>
    <a href="https://www.loom.com/share/fb14c80ea05a41289b714d15268e2d2c">
    </a>
    <a href="https://www.loom.com/share/fb14c80ea05a41289b714d15268e2d2c">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/fb14c80ea05a41289b714d15268e2d2c-9fa30efe1f4eb5f7-full-play.gif">
    </a>
  </div>


