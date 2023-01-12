package com.comeback.data.ui.avbobo.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.avbobo.SearchResultActivity;
import com.comeback.data.ui.avbobo.bean.ChannelList;
import com.comeback.secret.garden.R;

/* loaded from: classes.dex */
public class HomeTitleAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public ChannelList.DataBean f178c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ String a;

        public a(String str) {
            this.a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchResultActivity.v(HomeTitleAdapter.this.a, this.a);
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public TextView a;
        public TextView b;

        public b(HomeTitleAdapter homeTitleAdapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_name);
            this.b = (TextView) view.findViewById(R.id.tv_more);
        }
    }

    public HomeTitleAdapter(Context context, ChannelList.DataBean dataBean, f.a.a.a.a aVar) {
        this.a = context;
        this.f178c = dataBean;
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
        bVar.a.setText(this.f178c.getName());
        String keyword = this.f178c.getAttrs().getRoute().getMore().getKeyword();
        bVar.b.setVisibility(TextUtils.isEmpty(keyword) ? 8 : 0);
        bVar.b.setOnClickListener(new a(keyword));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_avbobo_home_title, viewGroup, false));
    }
}
