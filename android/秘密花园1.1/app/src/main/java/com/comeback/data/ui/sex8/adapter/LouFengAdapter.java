package com.comeback.data.ui.sex8.adapter;

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
import com.comeback.data.ui.sex8.bean.LouFengList;
import com.comeback.data.ui.sex8.ui.LouFengDetailActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class LouFengAdapter extends BaseAbstractAdapter<LouFengList.DataBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<LouFengList.DataBean> {
        public LouFengList.DataBean a;
        public LouFengAdapter b;
        @BindView
        public ImageView ivHead;
        @BindView
        public TextView tvAeea;
        @BindView
        public TextView tvName;

        public Holder(View view, LouFengAdapter louFengAdapter) {
            super(view);
            this.b = louFengAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(LouFengList.DataBean dataBean) {
            LouFengList.DataBean dataBean2 = dataBean;
            this.a = dataBean2;
            h.u0(dataBean2.getPic(), this.ivHead);
            this.tvName.setText(dataBean2.getTitle());
            this.tvAeea.setText(dataBean2.getDetail());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1856c;

        /* compiled from: LouFengAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1857c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1857c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1857c;
                LouFengDetailActivity.l(holder.b.a, holder.ivHead, holder.a.getPic(), holder.a.getId());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivHead = (ImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), ImageView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvAeea = (TextView) c.c(view, R.id.tv_area, e.a("UQsGCA9THkcFJ1ECGU0="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f1856c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivHead = null;
                holder.tvName = null;
                holder.tvAeea = null;
                this.f1856c.setOnClickListener(null);
                this.f1856c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public LouFengAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_sex8_loufeng, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
