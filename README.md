# News Flutter App

This is my first project using Flutter. It is a simple Arabic news app that fetches and displays news articles from NewsAPI.

## Project Overview

The app shows a top horizontal slider with categories, and below it displays news articles based on a selected category (like Jordan, Health, Sports, etc). All data is fetched dynamically from the internet using an API.

## Features

- API integration using NewsAPI
- Data fetching with the Dio package
- Clean folder structure: models, services, widgets, screens
- Uses FutureBuilder to handle loading and displaying data
- CustomScrollView with SliverList and SliverToBoxAdapter for smooth scrolling UI
- Loads images and news content dynamically

## Folder Structure

- `lib/models`: contains the Article model
- `lib/services`: contains API-related logic
- `lib/widgets`: reusable UI components like TopWidget and CompleateScreenWidget
- `lib/screens`: main app screens like the homepage and category view
- `main.dart`: the main entry point of the app

## Technologies Used

- Flutter
- Dart
- Dio for HTTP requests
- FutureBuilder
- Sliver widgets

## Notes

This is my first Flutter project and my first time using an external API. The goal was to learn and practice building real-world apps using clean code and live data.
