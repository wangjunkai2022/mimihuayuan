package com.comeback.data.ui.gkj.adapter;

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
import com.comeback.data.App;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.gkj.CgReadActivity;
import com.comeback.data.ui.gkj.bean.ComicList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class CgAdapter extends BaseAbstractAdapter<ComicList.ListsBean.DataBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ComicList.ListsBean.DataBean> {
        public CgAdapter a;
        public ComicList.ListsBean.DataBean b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvPraise;
        @BindView
        public TextView tvTitle;

        public Holder(View view, CgAdapter cgAdapter) {
            super(view);
            this.a = cgAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ComicList.ListsBean.DataBean dataBean) {
            ComicList.ListsBean.DataBean dataBean2 = dataBean;
            this.b = dataBean2;
            this.tvTitle.setText(dataBean2.getTitle());
            this.tvPraise.setText(String.valueOf(dataBean2.getHot()));
            ViewGroup.LayoutParams layoutParams = this.ivCover.getLayoutParams();
            layoutParams.width = (App.f103d / 2) - h.M(16.0f);
            layoutParams.height = (dataBean2.getHeight() * layoutParams.width) / dataBean2.getWidth();
            h.D0(dataBean2.getCover_url(), this.ivCover, 0);
            this.ivCover.setLayoutParams(layoutParams);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f905c;

        /* compiled from: CgAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f906c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f906c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f906c;
                CgReadActivity.l(holder.a.a, holder.b);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvPraise = (TextView) c.c(view, R.id.tv_praise, e.a("UQsGCA9THkcFNkYGERkGTA=="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f905c = b;
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
                holder.tvPraise = null;
                this.f905c.setOnClickListener(null);
                this.f905c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public CgAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_gkj_cg, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
