package com.comeback.data.ui.fruitPie.adapter;

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
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.fruitPie.DetailActivity;
import com.comeback.data.ui.fruitPie.bean.SearchResult;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class SearchAdapter extends BaseAbstractAdapter<SearchResult.DataEntity> {

    /* renamed from: d  reason: collision with root package name */
    public String f718d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<SearchResult.DataEntity> {
        public SearchAdapter a;
        public SearchResult.DataEntity b;
        @BindView
        public RatioImageView ivImg;
        @BindView
        public TextView tvCount;
        @BindView
        public TextView tvLength;
        @BindView
        public TextView tvTitle;

        public Holder(View view, SearchAdapter searchAdapter) {
            super(view);
            this.a = searchAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(SearchResult.DataEntity dataEntity) {
            SearchResult.DataEntity dataEntity2 = dataEntity;
            this.b = dataEntity2;
            this.tvTitle.setText(dataEntity2.getTitle());
            h.u0(this.b.getImg_url(), this.ivImg);
            this.tvCount.setText(String.valueOf(dataEntity2.getPlay_time_num_self()));
            this.tvLength.setText(dataEntity2.getMovie_time());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f719c;

        /* compiled from: SearchAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f720c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f720c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f720c;
                DetailActivity.n(holder.a.a, holder.b.getLibrary_id(), holder.a.f718d);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivImg = (RatioImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), RatioImageView.class);
            holder.tvCount = (TextView) c.c(view, R.id.tv_play_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
            holder.tvLength = (TextView) c.c(view, R.id.tv_play_length, e.a("UQsGCA9THkcFKlEJHx4LTA=="), TextView.class);
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f719c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                holder.tvCount = null;
                holder.tvLength = null;
                holder.tvTitle = null;
                this.f719c.setOnClickListener(null);
                this.f719c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public SearchAdapter(Context context, String str) {
        super(context);
        this.f718d = str;
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_fruit_discover, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
