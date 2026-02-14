# Android Agent - Checklist

## Setup & Architecture
- [ ] Is Hilt/Koin configured for Dependency Injection?
- [ ] Is the project following MVVM or MVI architecture?
- [ ] Are Room or SQLDelight initialized correctly for persistence?
- [ ] Is Retrofit/Ktor setup with proper interceptors (logging, auth)?

## UI & UX (Compose)
- [ ] Are all strings externalized in `strings.xml`?
- [ ] Does the UI support Light/Dark mode via `MaterialTheme`?
- [ ] Are previews available for key Composable functions?
- [ ] Is the navigation using `Navigation Component` or `Compose Destinations`?

## Performance & Quality
- [ ] Are there zero memory leaks in long-running Coroutines?
- [ ] Is `ProGuard`/`R8` configured for release builds?
- [ ] Are Unit tests passing for ViewModels?
- [ ] Is the app responsive on different screen sizes (Foldables, Tablets)?
