package com.comeback.data.ui.bale.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.bale.PlayActivity;
import com.comeback.data.ui.bale.bean.BaleVideoInfo;
import com.comeback.data.ui.bale.bean.VideoList;
import com.comeback.secret.garden.R;
/* loaded from: classes.dex */
public class MovieItemAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public VideoList.ResultBean f277c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ BaleVideoInfo a;

        public a(BaleVideoInfo baleVideoInfo) {
            this.a = baleVideoInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PlayActivity.o(MovieItemAdapter.this.a, String.valueOf(this.a.getId()));
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        public b(MovieItemAdapter movieItemAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_img);
            this.b = (TextView) view.findViewById(R.id.tv_title);
        }
    }

    public MovieItemAdapter(Context context, VideoList.ResultBean resultBean, f.a.a.a.a aVar) {
        this.a = context;
        this.f277c = resultBean;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f277c.getList().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        BaleVideoInfo baleVideoInfo = this.f277c.getList().get(i2);
        bVar.b.setText(baleVideoInfo.getTitle());
        h.w0(baleVideoInfo.getCoverBase64(), bVar.a);
        bVar.itemView.setOnClickListener(new a(baleVideoInfo));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_bale_h_video, viewGroup, false));
    }
}
