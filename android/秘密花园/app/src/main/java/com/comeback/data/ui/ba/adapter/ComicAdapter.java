package com.comeback.data.ui.ba.adapter;

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
import com.comeback.data.ui.ba.ComicReadActivity;
import com.comeback.data.ui.ba.bean.BaComicsBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ComicAdapter extends BaseAbstractAdapter<BaComicsBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<BaComicsBean> {
        public ComicAdapter a;
        public BaComicsBean b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvRank;
        @BindView
        public TextView tvTitle;

        public Holder(View view, ComicAdapter comicAdapter) {
            super(view);
            this.a = comicAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(BaComicsBean baComicsBean) {
            BaComicsBean baComicsBean2 = baComicsBean;
            this.b = baComicsBean2;
            this.tvTitle.setText(baComicsBean2.getTitle());
            this.tvRank.setText(String.valueOf(baComicsBean2.getFollow_num()));
            h.u0(baComicsBean2.getSmall_picture(), this.ivCover);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f243c;

        /* compiled from: ComicAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f244c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f244c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f244c;
                ComicReadActivity.q(holder.a.a, holder.b);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvRank = (TextView) c.c(view, R.id.tv_rank, e.a("UQsGCA9THkcFNFUJE00="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQXA0AGEQZE"));
            this.f243c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivCover = null;
                holder.tvTitle = null;
                holder.tvRank = null;
                this.f243c.setOnClickListener(null);
                this.f243c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ComicAdapter(Context context) {
        super(context);
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder<Lcom/comeback/data/ui/ba/bean/BaComicsBean;>; */
    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_ba_comic, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
