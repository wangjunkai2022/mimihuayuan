package com.comeback.data.ui.bale.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.App;
import com.comeback.data.ui.bale.ScreenActivity;
import com.comeback.data.ui.bale.bean.VideoList;
import com.comeback.secret.garden.R;
import f.d.a.c;
/* loaded from: classes.dex */
public class TitleAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public VideoList.ResultBean f287c;

    /* renamed from: d  reason: collision with root package name */
    public int f288d;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TitleAdapter titleAdapter = TitleAdapter.this;
            ScreenActivity.m(titleAdapter.a, titleAdapter.f287c.getId(), TitleAdapter.this.f288d);
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public TextView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public ImageView f289c;

        public b(TitleAdapter titleAdapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_name);
            this.b = (TextView) view.findViewById(R.id.tv_more);
            this.f289c = (ImageView) view.findViewById(R.id.iv_icon);
        }
    }

    public TitleAdapter(Context context, VideoList.ResultBean resultBean, int i2, f.a.a.a.a aVar) {
        this.a = context;
        this.f287c = resultBean;
        this.f288d = i2;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        bVar.a.setText(this.f287c.getName());
        String icon = this.f287c.getIcon();
        ImageView imageView = bVar.f289c;
        if (!TextUtils.isEmpty(icon)) {
            c.d(App.b).o(new f.e.a.i.b.a.a(icon)).q(R.drawable.default_img_bg).G(imageView);
        }
        bVar.b.setOnClickListener(new a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_bale_title, viewGroup, false));
    }
}
