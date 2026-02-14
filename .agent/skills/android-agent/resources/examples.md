# Android Agent - Examples

## Example 1: Hilt Repository Injection
```kotlin
@Module
@InstallIn(SingletonComponent::class)
abstract class RepositoryModule {
    @Binds
    @Singleton
    abstract fun bindRepository(impl: RealRepository): Repository
}
```

## Example 2: Jetpack Compose Screen
```kotlin
@Composable
fun ProfileScreen(viewModel: ProfileViewModel = hiltViewModel()) {
    val state by viewModel.uiState.collectAsState()
    
    Column(modifier = Modifier.padding(16.dp)) {
        Text(text = "User: ${state.name}", style = MaterialTheme.typography.h4)
        Button(onClick = { viewModel.refresh() }) {
            Text("Refresh")
        }
    }
}
```

## Example 3: Retrofit Service
```kotlin
interface ApiService {
    @GET("users/{id}")
    suspend fun getUser(@Path("id") id: String): Response<User>
}
```
