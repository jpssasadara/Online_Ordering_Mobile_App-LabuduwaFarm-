package com.example.suravi.fms1;

import android.content.Context;

        import android.content.Intent;
        import android.database.sqlite.SQLiteDatabase;
        import android.view.LayoutInflater;
        import android.view.View;
        import android.view.ViewGroup;
        import android.widget.BaseAdapter;
        import android.widget.Button;
        import android.widget.TextView;
        import java.util.ArrayList;
        import android.graphics.Bitmap;
        import android.widget.ImageView;


public class CustomerArrayAdapterClass extends BaseAdapter {
    Context con;
    ArrayList<Item> contactList;
    String Nic;
    Bitmap bitmap;
    //SQLiteDatabase db;

    //Context --> to make connection with xlm we want Activity class extend so that
    //Context will help to achive that otherwise we have to extend it but multiple extend are not allowed

    public CustomerArrayAdapterClass(Context c,ArrayList<Item> list,String Nic){
        this.con=c;
        contactList =list;
        this.Nic=Nic;
    }

    @Override
    //to get count of arrarylist
    public int getCount() {
        return contactList.size();
    }

    @Override
    public Object getItem(int position) {
        return contactList.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    //Makimg Connection between Main2Activity.java,listitem.xml and initilzing TextViews of listitem.xml--->>(P)
    public View getView(int position, View convertView, ViewGroup parent) {
        Item contactListItems = contactList.get(position);

        if(convertView==null){
            LayoutInflater inflater =(LayoutInflater) con.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            //convertView is the passing variable of listitem.xml in to Main2Activity.java this
            // part should do only one time
            convertView = inflater.inflate(R.layout.listitems2,null);
        }                                          //xml file name

        //--->>>(p)
        final TextView name = (TextView)convertView.findViewById(R.id.name);
        name.setText(contactListItems.getName());

        final TextView code = (TextView)convertView.findViewById(R.id.code);
        code.setText(contactListItems.getCode());

        final TextView amount = (TextView)convertView.findViewById(R.id.amount);
        amount.setText(Integer.toString(contactListItems.getAmount()));

        final TextView unit = (TextView)convertView.findViewById(R.id.unit);
        unit.setText(contactListItems.getUnit());

        final TextView price = (TextView)convertView.findViewById(R.id.price);
        price.setText(Integer.toString(contactListItems.getPrice()));

        final TextView discount = (TextView)convertView.findViewById(R.id.discount);
        discount.setText(Integer.toString(contactListItems.getDiscount()));


        // image->

            /*new GetImageFromURL().execute(contactListItems.getImage());
            final ImageView ivw = (ImageView) convertView.findViewById(R.id.imageView);
            ivw.setImageBitmap(bitmap);
            */
        final ImageView ivw = (ImageView) convertView.findViewById(R.id.imageView);
        ivw.setImageBitmap(contactListItems.getBitmap());
        //<- image

       /* Button btn2 = (Button)convertView.findViewById(R.id.Del);
        btn2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

            }
        });*/


        Button order = (Button)convertView.findViewById(R.id.order);
        order.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent in = new Intent(con,Main4Activity.class);

                in.putExtra("key1",name.getText());
                in.putExtra("key2",code.getText());
                in.putExtra("nic",Nic);

                con.startActivity(in);
            }
        });
        //pass whole things of listitem.xml in to Main2Activity.java
        return convertView;
    }
    // image ->


   /* class GetImageFromURL extends AsyncTask<String,Void,Bitmap>
    {


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
            bitmap=bitmap1;
        }
    }
*/
    // Image -->
}
