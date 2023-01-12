package com.comeback.data.ui.fruitPie.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
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
import com.comeback.data.ui.fruitPie.bean.Columnist;
import com.comeback.data.ui.fruitPie.bean.VideoList;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ArticleAdapter extends BaseAbstractAdapter<VideoList.DataEntity.ListEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<VideoList.DataEntity.ListEntity> {
        public ArticleAdapter a;
        public VideoList.DataEntity.ListEntity b;
        @BindView
        public ImageView ivHead;
        @BindView
        public RatioImageView ivImg;
        @BindView
        public TextView tvAuthor;
        @BindView
        public TextView tvCount;
        @BindView
        public TextView tvDate;
        @BindView
        public TextView tvIntro;
        @BindView
        public TextView tvTitle;

        public Holder(View view, ArticleAdapter articleAdapter) {
            super(view);
            this.a = articleAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoList.DataEntity.ListEntity listEntity) {
            VideoList.DataEntity.ListEntity listEntity2 = listEntity;
            this.b = listEntity2;
            TextView textView = this.tvDate;
            textView.setText(e.a("0M7PRA==") + listEntity2.getDate_number() + e.a("F4T/+0s=") + this.b.getShow_time());
            if (this.b.getColumnist() != null && this.b.getColumnist().size() != 0) {
                Columnist columnist = listEntity2.getColumnist().get(0);
                this.tvAuthor.setText(columnist.getColumnist_name());
                h.z0(columnist.getColumnist_img(), this.ivHead);
            }
            this.tvTitle.setText(this.b.getTitle());
            h.u0(this.b.getImg_url(), this.ivImg);
            this.tvIntro.setText(this.b.getSubtitle());
            this.tvCount.setText(String.valueOf(listEntity2.getDate_number()));
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f708c;

        /* renamed from: d  reason: collision with root package name */
        public View f709d;

        /* compiled from: ArticleAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f710c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f710c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f710c;
                DetailActivity.n(holder.a.a, holder.b.getLibrary_id(), e.a("BQ=="));
            }
        }

        /* compiled from: ArticleAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class b extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f711c;

            public b(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f711c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f711c;
                if (holder.b.getColumnist() != null) {
                    holder.b.getColumnist().size();
                }
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvDate = (TextView) c.c(view, R.id.tv_date, e.a("UQsGCA9THkcFIlUTHU0="), TextView.class);
            holder.tvAuthor = (TextView) c.c(view, R.id.tv_author, e.a("UQsGCA9THkcFJ0ETEAURTA=="), TextView.class);
            holder.ivImg = (RatioImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), RatioImageView.class);
            holder.ivHead = (ImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), ImageView.class);
            holder.tvCount = (TextView) c.c(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
            View b2 = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f708c = b2;
            b2.setOnClickListener(new a(this, holder));
            View b3 = c.b(view, R.id.ll_author, e.a("WgcXDAQXGRQcCHUSDAIMGRA="));
            this.f709d = b3;
            b3.setOnClickListener(new b(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvDate = null;
                holder.tvAuthor = null;
                holder.ivImg = null;
                holder.ivHead = null;
                holder.tvCount = null;
                holder.tvTitle = null;
                holder.tvIntro = null;
                this.f708c.setOnClickListener(null);
                this.f708c = null;
                this.f709d.setOnClickListener(null);
                this.f709d = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ArticleAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_fruit_columnist, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
