package com.comeback.data.ui.aimeiju.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.aimeiju.MovieDetailActivity;
import com.comeback.data.ui.aimeiju.bean.ListBean;
import com.comeback.secret.garden.R;
import java.util.List;
/* loaded from: classes.dex */
public class MovieItemAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<ListBean.DataBean.VodBean> f146c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ ListBean.DataBean.VodBean a;

        public a(ListBean.DataBean.VodBean vodBean) {
            this.a = vodBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MovieDetailActivity.n(MovieItemAdapter.this.a, this.a.getId());
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f147c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f148d;

        public b(MovieItemAdapter movieItemAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_img);
            this.b = (TextView) view.findViewById(R.id.tv_tag);
            this.f147c = (TextView) view.findViewById(R.id.tv_tag2);
            this.f148d = (TextView) view.findViewById(R.id.tv_title);
            TextView textView = (TextView) view.findViewById(R.id.tv_detail);
        }
    }

    public MovieItemAdapter(Context context, List<ListBean.DataBean.VodBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f146c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f146c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        ListBean.DataBean.VodBean vodBean = this.f146c.get(i2);
        bVar.f148d.setText(vodBean.getName());
        h.u0(vodBean.getPic(), bVar.a);
        bVar.b.setText(vodBean.getPf());
        bVar.f147c.setText(vodBean.getState());
        bVar.itemView.setOnClickListener(new a(vodBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_aimeiju_movie_h, viewGroup, false));
    }
}
