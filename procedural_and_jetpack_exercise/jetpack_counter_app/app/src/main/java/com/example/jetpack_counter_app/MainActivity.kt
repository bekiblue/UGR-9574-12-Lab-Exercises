import androidx.compose.foundation.layout.*
import androidx.compose.material.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
@Composable
fun CounterApp() {
    var count by remember { mutableStateOf(0) }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Counter App") }
            )
        },
        content = { padding ->
            Column(
                modifier = Modifier
                    .padding(padding)
                    .fillMaxSize(),
                verticalArrangement = Arrangement.Center,
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                Text(text = "Count: $count", style = MaterialTheme.typography.h4)
                Spacer(modifier = Modifier.height(16.dp))
                Row(
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Button(onClick = { count-- }) {
                        Text(text = "-")
                    }
                    Spacer(modifier = Modifier.width(16.dp))
                    Button(onClick = { count++ }) {
                        Text(text = "+")
                    }
                }
                Spacer(modifier = Modifier.height(16.dp))
                Button(onClick = { count = 0 }) {
                    Text(text = "Reset")
                }
            }
        }
    )
}

@Preview
@Composable
fun PreviewCounterApp() {
    CounterApp()
}
