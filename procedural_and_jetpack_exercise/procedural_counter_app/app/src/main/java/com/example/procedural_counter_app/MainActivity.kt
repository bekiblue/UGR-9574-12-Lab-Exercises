package com.example.procedural_counter_app

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    private var count = 0
    private lateinit var tvCount: TextView
    private lateinit var btnIncrement: Button
    private lateinit var btnDecrement: Button
    private lateinit var btnReset: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        tvCount = findViewById(R.id.tvCount)
        btnIncrement = findViewById(R.id.btnIncrement)
        btnDecrement = findViewById(R.id.btnDecrement)
        btnReset = findViewById(R.id.btnReset)

        tvCount.text = count.toString()

        btnIncrement.setOnClickListener {
            count++
            tvCount.text = count.toString()
        }

        btnDecrement.setOnClickListener {
            count--
            tvCount.text = count.toString()
        }

        btnReset.setOnClickListener {
            count = 0
            tvCount.text = count.toString()
        }
    }
}
