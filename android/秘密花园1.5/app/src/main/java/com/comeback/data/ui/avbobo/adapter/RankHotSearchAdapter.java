package com.comeback.data.ui.avbobo.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.Unbinder;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.avbobo.SearchResultActivity;
import com.comeback.data.ui.avbobo.bean.RankHotSearch;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class RankHotSearchAdapter extends BaseAbstractAdapter<RankHotSearch.DataBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<RankHotSearch.DataBean> {
        public RankHotSearchAdapter a;
        public RankHotSearch.DataBean b;
        @BindView
        public TextView tvCount;
        @BindView
        public TextView tvTitle;

        public Holder(View view, RankHotSearchAdapter rankHotSearchAdapter) {
            super(view);
            this.a = rankHotSearchAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(RankHotSearch.DataBean dataBean) {
            RankHotSearch.DataBean dataBean2 = dataBean;
            this.b = dataBean2;
            this.tvTitle.setText(dataBean2.getKeyword());
            this.tvCount.setText(String.valueOf(dataBean2.getCount()));
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f179c;

        /* compiled from: RankHotSearchAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f180c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f180c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f180c;
                SearchResultActivity.v(holder.a.a, holder.b.getKeyword());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvCount = (TextView) c.c(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f179c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                holder.tvCount = null;
                this.f179c.setOnClickListener(null);
                this.f179c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public RankHotSearchAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_avbobo_hot_search, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
