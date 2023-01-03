package com.comeback.data.ui.jhlf.adapter;

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
import com.comeback.data.ui.jhlf.FengliuActivity;
import com.comeback.data.ui.jhlf.bean.WebSiteBean;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class WebSiteAdapter extends BaseAbstractAdapter<WebSiteBean.WebSiteEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<WebSiteBean.WebSiteEntity> {
        public WebSiteAdapter a;
        public WebSiteBean.WebSiteEntity b;
        @BindView
        public RatioImageView ivCover;
        @BindView
        public TextView tvName;

        public Holder(View view, WebSiteAdapter webSiteAdapter) {
            super(view);
            this.a = webSiteAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(WebSiteBean.WebSiteEntity webSiteEntity) {
            WebSiteBean.WebSiteEntity webSiteEntity2 = webSiteEntity;
            this.b = webSiteEntity2;
            this.tvName.setText(webSiteEntity2.getWebsite());
            h.u0(webSiteEntity2.getLogo(), this.ivCover);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1275c;

        /* compiled from: WebSiteAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1276c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1276c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1276c;
                FengliuActivity.v(holder.a.a, holder.b.getWebsite(), String.valueOf(holder.b.getId()));
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivCover = (RatioImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), RatioImageView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f1275c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivCover = null;
                holder.tvName = null;
                this.f1275c.setOnClickListener(null);
                this.f1275c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public WebSiteAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_jhlf_website, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
