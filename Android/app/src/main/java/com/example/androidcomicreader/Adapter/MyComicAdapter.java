package com.example.androidcomicreader.Adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.androidcomicreader.ChapterActivity;
import com.example.androidcomicreader.Common.Common;
import com.example.androidcomicreader.Interface.IRecyclerOnClick;
import com.example.androidcomicreader.Model.Comic;
import com.example.androidcomicreader.R;
import com.squareup.picasso.Picasso;

import java.util.List;

public class MyComicAdapter extends RecyclerView.Adapter<MyComicAdapter.MyViewHolder>{

    Context context;
    List<Comic> comicList;

    public MyComicAdapter(Context context, List<Comic> comicList) {
        this.context = context;
        this.comicList = comicList;
    }

    @NonNull
    @Override
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        View itemView = LayoutInflater.from(context).inflate(R.layout.comic_item,viewGroup,false);
        return new MyViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewHolder myViewHolder, int position) {

        Picasso.get().load(comicList.get(position).getImage()).into(myViewHolder.imageView);
        myViewHolder.textView.setText(comicList.get(position).getName());

        // for on click purpose :
        myViewHolder.setiRecyclerOnClick(new IRecyclerOnClick() {
            @Override
            public void onClick(View view, int position) {
                // Start new activity


                // IMPORTANT
                // set flags should not be used
                context.startActivity(new Intent(context, ChapterActivity.class).setFlags(Intent.FLAG_ACTIVITY_NEW_TASK));

                // to store our selected comic
                Common.selected_comic = comicList.get(position);

            }
        });

    }

    @Override
    public int getItemCount() {
        return comicList.size();
    }

    public class MyViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {

        ImageView imageView;
        TextView textView;

        IRecyclerOnClick iRecyclerOnClick;


        public void setiRecyclerOnClick(IRecyclerOnClick iRecyclerOnClick) {
            this.iRecyclerOnClick = iRecyclerOnClick;
        }

        public MyViewHolder(@NonNull View itemView) {
            super(itemView);

            imageView = (ImageView)itemView.findViewById(R.id.image_view);
            textView = (TextView)itemView.findViewById(R.id.manga_name);

            itemView.setOnClickListener(this);

        }

        @Override
        public void onClick(View view) {
            iRecyclerOnClick.onClick(view,getAdapterPosition());
        }
    }
}
