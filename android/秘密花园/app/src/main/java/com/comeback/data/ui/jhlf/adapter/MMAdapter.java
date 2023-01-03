package com.comeback.data.ui.jhlf.adapter;

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
import com.comeback.data.ui.jhlf.InfoActivity;
import com.comeback.data.ui.jhlf.bean.MMList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class MMAdapter extends BaseAbstractAdapter<MMList.DataEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<MMList.DataEntity> {
        public MMList.DataEntity a;
        public MMAdapter b;
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

        public Holder(View view, MMAdapter mMAdapter) {
            super(view);
            this.b = mMAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(MMList.DataEntity dataEntity) {
            MMList.DataEntity dataEntity2 = dataEntity;
            this.a = dataEntity2;
            String cover = dataEntity2.getCover();
            this.ivCover.setVisibility(TextUtils.isEmpty(cover) ? 8 : 0);
            h.u0(cover, this.ivCover);
            this.tvName.setText(dataEntity2.getTitle());
            this.tvState.setText(dataEntity2.getPublished_at());
            this.tvIntro.setText(dataEntity2.getDescd());
            this.tvAddress.setText(dataEntity2.getAddress());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1273c;

        /* compiled from: MMAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1274c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1274c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1274c;
                InfoActivity.n(holder.b.a, holder.a);
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
            this.f1273c = b;
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
                this.f1273c.setOnClickListener(null);
                this.f1273c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public MMAdapter(Context context) {
        super(context);
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder<Lcom/comeback/data/ui/jhlf/bean/MMList$DataEntity;>; */
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
