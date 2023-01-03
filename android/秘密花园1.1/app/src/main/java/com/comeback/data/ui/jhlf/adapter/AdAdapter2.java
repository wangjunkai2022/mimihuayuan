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
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindColor;
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
public class AdAdapter2 extends BaseAbstractAdapter<WebSiteBean.AdEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<WebSiteBean.AdEntity> {
        public AdAdapter2 a;
        public WebSiteBean.AdEntity b;
        @BindColor
        public int basic_third_text;

        /* renamed from: c  reason: collision with root package name */
        public boolean f1266c;
        @BindView
        public RatioImageView ivCover;
        @BindColor
        public int kmColorAccent;
        @BindView
        public TextView tvDown2;
        @BindView
        public TextView tvName;
        @BindView
        public TextView tvState;

        public Holder(View view, AdAdapter2 adAdapter2) {
            super(view);
            this.a = adAdapter2;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(WebSiteBean.AdEntity adEntity) {
            WebSiteBean.AdEntity adEntity2 = adEntity;
            this.f1266c = h.r(adEntity2.getPackageName());
            this.b = adEntity2;
            this.tvName.setText(adEntity2.getName());
            h.u0(this.b.getLogo(), this.ivCover);
            this.tvState.setText(e.a(this.f1266c ? "0tXRgcX60ZD2" : "0f7JgcX60ZD2"));
            this.tvState.setTextColor(this.f1266c ? this.basic_third_text : this.kmColorAccent);
            this.tvDown2.setVisibility(TextUtils.isEmpty(this.b.getUrl2()) ? 8 : 0);
        }

        public final void b(String str) {
            if (this.f1266c) {
                h.n1(e.a("0tXRgcX60ZD2iYn5"));
                return;
            }
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
        public View f1267c;

        /* renamed from: d  reason: collision with root package name */
        public View f1268d;

        /* renamed from: e  reason: collision with root package name */
        public View f1269e;

        /* compiled from: AdAdapter2$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1270c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1270c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1270c.onClick(view);
            }
        }

        /* compiled from: AdAdapter2$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class b extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1271c;

            public b(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1271c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1271c.onClick(view);
            }
        }

        /* compiled from: AdAdapter2$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class c extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1272c;

            public c(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1272c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1272c.onClick(view);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivCover = (RatioImageView) d.c.c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), RatioImageView.class);
            holder.tvName = (TextView) d.c.c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            View b2 = d.c.c.b(view, R.id.tv_down1, e.a("UQsGCA9THkcFIlsQFltES1YMB0QGFk1bHAIUQBcEIAdeAQhD"));
            TextView textView = (TextView) d.c.c.a(b2, R.id.tv_down1, e.a("UQsGCA9THkcFIlsQFltE"), TextView.class);
            this.f1267c = b2;
            b2.setOnClickListener(new a(this, holder));
            View b3 = d.c.c.b(view, R.id.tv_down2, e.a("UQsGCA9THkcFIlsQFlhES1YMB0QGFk1bHAIUQBcEIAdeAQhD"));
            holder.tvDown2 = (TextView) d.c.c.a(b3, R.id.tv_down2, e.a("UQsGCA9THkcFIlsQFlhE"), TextView.class);
            this.f1268d = b3;
            b3.setOnClickListener(new b(this, holder));
            holder.tvState = (TextView) d.c.c.c(view, R.id.tv_state, e.a("UQsGCA9THkcFNUAGDA9E"), TextView.class);
            View b4 = d.c.c.b(view, R.id.rl_root, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f1269e = b4;
            b4.setOnClickListener(new c(this, holder));
            Context context = view.getContext();
            holder.kmColorAccent = ContextCompat.getColor(context, R.color.kmColorAccent);
            holder.basic_third_text = ContextCompat.getColor(context, R.color.basic_third_text);
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
                holder.tvState = null;
                this.f1267c.setOnClickListener(null);
                this.f1267c = null;
                this.f1268d.setOnClickListener(null);
                this.f1268d = null;
                this.f1269e.setOnClickListener(null);
                this.f1269e = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public AdAdapter2(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_jhlf_ad2, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
