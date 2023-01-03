package com.comeback.data.ui.jhlf.adapter;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.jhlf.bean.WebSiteBean;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class AdAdapter extends BaseAbstractAdapter<WebSiteBean.AdEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<WebSiteBean.AdEntity> {
        public AdAdapter a;
        public WebSiteBean.AdEntity b;
        @BindView
        public RatioImageView ivCover;
        @BindView
        public TextView tvDown2;
        @BindView
        public TextView tvName;

        public Holder(View view, AdAdapter adAdapter) {
            super(view);
            this.a = adAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(WebSiteBean.AdEntity adEntity) {
            WebSiteBean.AdEntity adEntity2 = adEntity;
            this.b = adEntity2;
            this.tvName.setText(adEntity2.getName());
            h.u0(this.b.getLogo(), this.ivCover);
            this.tvDown2.setVisibility(TextUtils.isEmpty(this.b.getUrl2()) ? 8 : 0);
        }

        public final void b(String str) {
            try {
                this.a.a.startActivity(new Intent(e.a("VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="), Uri.parse(str)));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @OnClick
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.rl_root /* 2131296745 */:
                case R.id.tv_down1 /* 2131296947 */:
                    b(this.b.getUrl());
                    return;
                case R.id.tv_down2 /* 2131296948 */:
                    b(this.b.getUrl2());
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1260c;

        /* renamed from: d  reason: collision with root package name */
        public View f1261d;

        /* renamed from: e  reason: collision with root package name */
        public View f1262e;

        /* compiled from: AdAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1263c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1263c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1263c.onClick(view);
            }
        }

        /* compiled from: AdAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class b extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1264c;

            public b(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1264c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1264c.onClick(view);
            }
        }

        /* compiled from: AdAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class c extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1265c;

            public c(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1265c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1265c.onClick(view);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivCover = (RatioImageView) d.c.c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), RatioImageView.class);
            holder.tvName = (TextView) d.c.c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            View b2 = d.c.c.b(view, R.id.tv_down1, e.a("UQsGCA9THkcFIlsQFltES1YMB0QGFk1bHAIUQBcEIAdeAQhD"));
            TextView textView = (TextView) d.c.c.a(b2, R.id.tv_down1, e.a("UQsGCA9THkcFIlsQFltE"), TextView.class);
            this.f1260c = b2;
            b2.setOnClickListener(new a(this, holder));
            View b3 = d.c.c.b(view, R.id.tv_down2, e.a("UQsGCA9THkcFIlsQFlhES1YMB0QGFk1bHAIUQBcEIAdeAQhD"));
            holder.tvDown2 = (TextView) d.c.c.a(b3, R.id.tv_down2, e.a("UQsGCA9THkcFIlsQFlhE"), TextView.class);
            this.f1261d = b3;
            b3.setOnClickListener(new b(this, holder));
            View b4 = d.c.c.b(view, R.id.rl_root, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f1262e = b4;
            b4.setOnClickListener(new c(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivCover = null;
                holder.tvName = null;
                holder.tvDown2 = null;
                this.f1260c.setOnClickListener(null);
                this.f1260c = null;
                this.f1261d.setOnClickListener(null);
                this.f1261d = null;
                this.f1262e.setOnClickListener(null);
                this.f1262e = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public AdAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_jhlf_ad, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
