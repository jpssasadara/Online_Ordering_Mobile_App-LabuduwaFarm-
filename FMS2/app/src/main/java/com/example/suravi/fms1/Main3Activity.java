package com.example.suravi.fms1;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.InputStream;
import java.util.ArrayList;
import java.io.InputStream;
import java.util.ArrayList;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.support.annotation.NonNull;

public class Main3Activity extends AppCompatActivity {
    Button vieww;
    ListView listView;
    TextView nic;
    String Nic;
    Bitmap bitmap;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main3);
        nic = (TextView)findViewById(R.id.nic);
        listView=(ListView)findViewById(R.id.ListView);
        Intent i = getIntent();

        if (i!=null) {
            String result= i.getStringExtra("key1");
            //get session NIC
            Nic = i.getStringExtra("SessionNic");
            //Nic ="sasa";
            nic.setText(Nic);
            //textView2.setText(result);
            try {
                JSONArray array = new JSONArray(result.trim());
                // ArrayList<String> list = new ArrayList<>();
                   ArrayList<Item> list = new ArrayList<Item>();
                if(array != null){
                    for(int ii=0;ii<array.length();ii++){
                        JSONObject ob = (JSONObject)array.get(ii);
                        Item u =new Item();
                        u.setCode(ob.getString("Code"));
                        u.setName(ob.getString("Name"));
                        u.setAmount(ob.getInt("Amount"));
                        u.setPrice(ob.getInt("Price"));
                        u.setType(ob.getString("Type"));
                        u.setDiscount(ob.getInt("Discount"));
                        u.setUnit(ob.getString("Unit"));
                        u.setImage(ob.getString("name"));
                        //Thread.sleep(1000);
                        new GetImageFromURL(u).execute(u.getImage());
//                        InputStream ist=new java.net.URL(u.getImage()).openStream();



                       // list.add(ob.getString("Code")+"/"+ob.getString("Unit"));
                        list.add(u);
                    }
                   // ArrayAdapter ad = new ArrayAdapter(Main3Activity.this,android.R.layout.simple_list_item_1,list);
                    //listView.setAdapter(ad);
                    CustomerArrayAdapterClass ad;
                    ad = new CustomerArrayAdapterClass(Main3Activity.this,list,Nic);
                    listView.setAdapter(ad);
                }
            }
            catch(Exception ex ){

            }

        }

        vieww = (Button) findViewById(R.id.view);
        vieww.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent in =new Intent(Main3Activity.this,Main5Activity.class);
                in.putExtra("nic",Nic);
                startActivity(in);

            }
        });


    }
    class GetImageFromURL extends AsyncTask<String,Void,Bitmap>
    {
        Item u;
        GetImageFromURL(Item uu){
          u=uu;
        }
        @Override
        protected Bitmap doInBackground(String... url) {
            String urldisplay=url[0];
            Bitmap bitmap1=null;

            try{

                InputStream ist=new java.net.URL(urldisplay).openStream();
                bitmap1= BitmapFactory.decodeStream(ist);
            }
            catch (Exception ex)
            {
                ex.printStackTrace();
            }

            return bitmap1;
        }

        @Override
        protected void onPostExecute(Bitmap bitmap1){

            super.onPostExecute(bitmap1);
           // bitmap=bitmap1;
            u.setBitmap(bitmap1);
        }
    }
}

