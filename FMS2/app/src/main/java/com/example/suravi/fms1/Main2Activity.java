package com.example.suravi.fms1;

import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Patterns;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.Toast;

import com.basgeekball.awesomevalidation.AwesomeValidation;
import com.basgeekball.awesomevalidation.ValidationStyle;
import com.google.common.collect.Range;

import com.google.common.collect.Range;

public class Main2Activity extends AppCompatActivity  {
    TextView fn;
    TextView ln;
    TextView nic;
    TextView pn;
    TextView address;
    TextView email;
    TextView un;
    TextView pw;
    TextView rpw;
    Button submit;
    Button login;
    AwesomeValidation awesomeValidation;
    //String myurlAddData = "http://192.168.43.165/fms1/RegApp.php";
    String myurlAddData = "http://192.168.43.165/FmsFarmSide6/Farm-Management-System-IOT/module/fms1/RegApp.php";
    String regexPassword = ".{8,}";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);
        fn = (TextView)findViewById(R.id.fn);
        ln = (TextView)findViewById(R.id.ln);
        nic = (TextView)findViewById(R.id.nic);
        pn = (TextView)findViewById(R.id.pn);
        address = (TextView)findViewById(R.id.address);
        email = (TextView)findViewById(R.id.email);
        un = (TextView)findViewById(R.id.un);
        pw = (TextView)findViewById(R.id.pw);
        rpw = (TextView)findViewById(R.id.rpw);
        submit=(Button)findViewById(R.id.submit);
        login=(Button)findViewById(R.id.login);

        awesomeValidation = new AwesomeValidation(ValidationStyle.BASIC);

//        awesomeValidation.addValidation(this, R.id.fn, "^[A-Za-z\\s]{1,}[\\.]{0,1}[A-Za-z\\s]{0,}$", R.string.nameerror);
//        awesomeValidation.addValidation(this, R.id.ln, "^[A-Za-z\\s]{1,}[\\.]{0,1}[A-Za-z\\s]{0,}$", R.string.nameerror);
//        awesomeValidation.addValidation(this, R.id.un, "^[A-Za-z\\s]{1,}[\\.]{0,1}[A-Za-z\\s]{0,}$", R.string.nameerror);
//        awesomeValidation.addValidation(this, R.id.email, Patterns.EMAIL_ADDRESS, R.string.emailerror);
//        awesomeValidation.addValidation(this, R.id.pn,"^[+]?[0-9]{10,13}$", R.string.mobileerror);
//        awesomeValidation.addValidation(this, R.id.pw, Range.closed(1, 999999999), R.string.dateerror);
//        awesomeValidation.addValidation(this, R.id.rpw, Range.closed(1, 999999999), R.string.ageerror);

        awesomeValidation.addValidation(this, R.id.fn, "^[A-Za-z\\s]{1,}[\\.]{0,1}[A-Za-z\\s]{0,}$", R.string.nameerror);
        awesomeValidation.addValidation(this, R.id.ln, "^[A-Za-z\\s]{1,}[\\.]{0,1}[A-Za-z\\s]{0,}$", R.string.nameerror);
        awesomeValidation.addValidation(this, R.id.un, "^[A-Za-z\\s]{1,}[\\.]{0,1}[A-Za-z\\s]{0,}$", R.string.unerror);
        awesomeValidation.addValidation(this, R.id.email, Patterns.EMAIL_ADDRESS, R.string.emailerror);
        awesomeValidation.addValidation(this, R.id.pn,"^[+]?[0-9]{10,13}$", R.string.mobileerror);
        awesomeValidation.addValidation(this, R.id.nic,"^[0-9 || v]{10}$", R.string.nicerror);
        awesomeValidation.addValidation(this, R.id.address,"^[0-9 ||A-Z||a-z||/||-||.]{1,70}$", R.string.adderror);
        // pw at least 8 character
        awesomeValidation.addValidation(this, R.id.pw,regexPassword, R.string.pwerror);
        awesomeValidation.addValidation(this, R.id.rpw,regexPassword, R.string.rpwerror);

        login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent in =new Intent(Main2Activity.this,MainActivity.class);
                startActivity(in);
                Main2Activity.this.finish();
            }
        });
        submit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (awesomeValidation.validate()) {
                    Toast.makeText(Main2Activity.this, "Validation Successfull", Toast.LENGTH_LONG).show();


                    //process the data further


                MyTask task = new MyTask();
                task.execute(myurlAddData);
                if(!pw.getText().toString().equals(rpw.getText().toString())){
                    rpw.setText("");
                }
                else {
                    fn.setText("");
                    ln.setText("");
                    nic.setText("");
                    pn.setText("");
                    address.setText("");
                    email.setText("");
                    un.setText("");
                    rpw.setText("");
                    ln.setText("");
                    pw.setText("");
                }
            }}
        });
    }


// For Add data
    private class MyTask extends AsyncTask<String, Void, String> {


/*1.string String........,2.void pre request eke ewaa,3.String doIn ge */

    @Override
    protected String doInBackground(String... abc)

    {

        //data cpacket continue ywna eka

        String output = "";

        for (String s1 : abc) {

            output = sendDetails(s1);
        }
        return output;
        //return sendDetails(abc[0]); // mema kotasa unath pramanawath

    }

    private String sendDetails(String url) {

        WebConRegister wc = new WebConRegister(Main2Activity.this);





        String my = wc.myConnection(url, fn.getText().toString(), ln.getText().toString(), nic.getText().toString()
                , pn.getText().toString(), address.getText().toString(),
                email.getText().toString(),un.getText().toString()
                ,pw.getText().toString(),rpw.getText().toString());//meya void ekk return krnne
        return my;

    }

    @Override
    protected void onPostExecute(String s) {
        Toast.makeText(Main2Activity.this, s, Toast.LENGTH_LONG).show();


    }
}
}
