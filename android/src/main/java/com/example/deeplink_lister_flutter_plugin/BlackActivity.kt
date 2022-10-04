package com.example.deeplink_lister_flutter_plugin

import android.net.Uri
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.TextView

class BlackActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_black)
        val uri: Uri? = intent.data
        if(uri != null){
            val label:TextView = findViewById(R.id.textView)
            label.text = uri.getQueryParameter("data")
        }
    }

    override fun onWindowFocusChanged(hasFocus: Boolean) {
        super.onWindowFocusChanged(hasFocus)
        val uri: Uri? = intent.data
        if(uri != null){
            val label:TextView = findViewById(R.id.textView)
            label.text = uri.getQueryParameter("data")
        }
    }
}