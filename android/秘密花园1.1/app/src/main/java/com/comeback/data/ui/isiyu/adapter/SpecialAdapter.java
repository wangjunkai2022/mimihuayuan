package com.comeback.data.ui.isiyu.adapter;

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
import com.comeback.data.ui.isiyu.SpecialDetailActivity;
import com.comeback.data.ui.isiyu.bean.SpecialList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class SpecialAdapter extends BaseAbstractAdapter<SpecialList.DataBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<SpecialList.DataBean> {
        public SpecialAdapter a;
        public SpecialList.DataBean b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvTitle;

        public Holder(View view, SpecialAdapter specialAdapter) {
            super(view);
            this.a = specialAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(SpecialList.DataBean dataBean) {
            SpecialList.DataBean dataBean2 = dataBean;
            this.b = dataBean2;
            this.tvTitle.setText(dataBean2.getTitle());
            h.G0(dataBean2.getCover_oss_filename(), this.ivCover);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1181c;

        /* compiled from: SpecialAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1182c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1182c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1182c;
                SpecialDetailActivity.t(holder.a.a, holder.b.getId(), holder.b.getCover_oss_filename(), holder.ivCover);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f1181c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                holder.ivCover = null;
                this.f1181c.setOnClickListener(null);
                this.f1181c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public SpecialAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_isiyu_special, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
