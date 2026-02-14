# Android Agent - Error Playbook

## Issue: Gradle Sync Failure
- **Symptom**: "Could not find com.android.tools.build:gradle:X.X.X".
- **Action**: Check `settings.gradle.kts` and root `build.gradle.kts` for repository declarations (google, mavenCentral). Verify the AGP version matches the Gradle Wrapper version.

## Issue: Context Leak
- **Symptom**: Logcat shows "Activity has leaked ServiceConnection".
- **Action**: Ensure all CoroutineScopes are tied to `viewModelScope` or `lifecycleScope`. Unregister listeners in `onCleared()` or `onDestroy()`.

## Issue: Compose Infinite Recomposition
- **Symptom**: Logcat spam or choppy UI.
- **Action**: Use `remember` for complex calculations and `derivedStateOf` for dependent states. Ensure lambda parameters don't change on every recomposition if possible.
