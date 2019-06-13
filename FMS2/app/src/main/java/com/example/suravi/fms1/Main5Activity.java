package com.example.suravi.fms1;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

public class Main5Activity extends AppCompatActivity {
    TextView nic;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main5);
        nic = (TextView)findViewById(R.id.nic);
        Intent i = getIntent();

        if (i!=null) {
            String stringData1= i.getStringExtra("nic");
            nic.setText(stringData1);

        }
    }
}
