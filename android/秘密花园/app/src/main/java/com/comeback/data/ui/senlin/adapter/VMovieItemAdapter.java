package com.comeback.data.ui.senlin.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.senlin.VideoDetailActivity;
import com.comeback.data.ui.senlin.bean.SenlinList;
import com.comeback.secret.garden.R;
import java.util.List;

/* loaded from: classes.dex */
public class VMovieItemAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<SenlinList.ListEntity> f1850c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ SenlinList.ListEntity a;

        public a(SenlinList.ListEntity listEntity) {
            this.a = listEntity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoDetailActivity.s(VMovieItemAdapter.this.a, String.valueOf(this.a.getVod_id()));
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public TextView a;

        public b(VMovieItemAdapter vMovieItemAdapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_title);
        }
    }

    public VMovieItemAdapter(Context context, List<SenlinList.ListEntity> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f1850c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f1850c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        SenlinList.ListEntity listEntity = this.f1850c.get(i2);
        bVar.a.setText(listEntity.getVod_name());
        bVar.itemView.setOnClickListener(new a(listEntity));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_senlin_video, viewGroup, false));
    }
}
