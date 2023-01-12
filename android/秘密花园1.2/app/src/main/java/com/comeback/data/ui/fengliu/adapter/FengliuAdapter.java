package com.comeback.data.ui.fengliu.adapter;

import android.content.Context;
import android.text.TextUtils;
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
import com.comeback.data.ui.fengliu.Info2Activity;
import com.comeback.data.ui.fengliu.bean.RecordsEntity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class FengliuAdapter extends BaseAbstractAdapter<RecordsEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<RecordsEntity> {
        public RecordsEntity a;
        public FengliuAdapter b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvAddress;
        @BindView
        public TextView tvIntro;
        @BindView
        public TextView tvName;
        @BindView
        public TextView tvState;

        public Holder(View view, FengliuAdapter fengliuAdapter) {
            super(view);
            this.b = fengliuAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(RecordsEntity recordsEntity) {
            RecordsEntity recordsEntity2 = recordsEntity;
            this.a = recordsEntity2;
            this.ivCover.setVisibility(TextUtils.isEmpty(recordsEntity2.getCover_picture()) ? 8 : 0);
            h.u0(recordsEntity2.getCover_picture(), this.ivCover);
            this.tvName.setText(recordsEntity2.getTitle());
            TextView textView = this.tvState;
            textView.setText(h.O0(recordsEntity2.getPublishedAt()) + e.a("F0IfREs=") + recordsEntity2.getViewCount() + e.a("0c7Cgt780ZT7"));
            this.tvIntro.setText(recordsEntity2.getDesc());
            this.tvAddress.setText(recordsEntity2.getCityCodeReadable());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f691c;

        /* compiled from: FengliuAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f692c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f692c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f692c;
                Info2Activity.l(holder.b.a, holder.a);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvState = (TextView) c.c(view, R.id.tv_state, e.a("UQsGCA9THkcFNUAGDA9E"), TextView.class);
            holder.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
            holder.tvAddress = (TextView) c.c(view, R.id.tv_address, e.a("UQsGCA9THkcFJ1ADCg8QGBA="), TextView.class);
            holder.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f691c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvName = null;
                holder.tvState = null;
                holder.tvIntro = null;
                holder.tvAddress = null;
                holder.ivCover = null;
                this.f691c.setOnClickListener(null);
                this.f691c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public FengliuAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_fengliu, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
