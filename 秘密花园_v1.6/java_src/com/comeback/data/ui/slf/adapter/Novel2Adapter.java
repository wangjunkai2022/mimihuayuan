package com.comeback.data.ui.slf.adapter;

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
import com.comeback.data.ui.slf.NovelReadActivity;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class Novel2Adapter extends BaseAbstractAdapter<SLFItemBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<SLFItemBean> {
        public Novel2Adapter a;
        public SLFItemBean b;
        @BindView
        public TextView tvCollect;
        @BindView
        public TextView tvIntro;
        @BindView
        public TextView tvTitle;
        @BindView
        public TextView tvView;

        public Holder(View view, Novel2Adapter novel2Adapter) {
            super(view);
            this.a = novel2Adapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(SLFItemBean sLFItemBean) {
            SLFItemBean sLFItemBean2 = sLFItemBean;
            this.b = sLFItemBean2;
            this.tvTitle.setText(sLFItemBean2.getName());
            this.tvIntro.setText(sLFItemBean2.getDescription());
            this.tvView.setText(sLFItemBean2.getClick());
            this.tvCollect.setText(sLFItemBean2.getFavorite());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f2085c;

        /* compiled from: Novel2Adapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f2086c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f2086c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f2086c;
                if (holder.b.getIsVideo()) {
                    h.p1(e.a("0fjhgvzF3Yv+gLfUnv7MjbvjhfjilpqDlta7j9fejNap"));
                } else {
                    NovelReadActivity.p(holder.a.a, holder.b.getId());
                }
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvTitle = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
            holder.tvView = (TextView) c.c(view, R.id.tv_view, e.a("UQsGCA9THkcFMF0CD00="), TextView.class);
            holder.tvCollect = (TextView) c.c(view, R.id.tv_collect, e.a("UQsGCA9THkcFJVsLFA8AHxA="), TextView.class);
            View b = c.b(view, R.id.rl_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f2085c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                holder.tvIntro = null;
                holder.tvView = null;
                holder.tvCollect = null;
                this.f2085c.setOnClickListener(null);
                this.f2085c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public Novel2Adapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_slf_novel, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
