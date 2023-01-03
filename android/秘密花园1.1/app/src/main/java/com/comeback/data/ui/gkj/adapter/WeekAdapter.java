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
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.gkj.CgReadActivity;
import com.comeback.data.ui.gkj.bean.ComicList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class WeekAdapter extends BaseAbstractAdapter<ComicList.ListsBean.DataBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ComicList.ListsBean.DataBean> {
        public WeekAdapter a;
        public ComicList.ListsBean.DataBean b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvHot;
        @BindView
        public TextView tvName;
        @BindView
        public TextView tvStar;
        @BindView
        public TextView tvTag1;
        @BindView
        public TextView tvTag2;
        @BindView
        public TextView tvTag3;
        @BindView
        public TextView tvTag4;
        @BindView
        public TextView tvUpdate;

        public Holder(View view, WeekAdapter weekAdapter) {
            super(view);
            this.a = weekAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ComicList.ListsBean.DataBean dataBean) {
            ComicList.ListsBean.DataBean dataBean2 = dataBean;
            this.b = dataBean2;
            this.tvName.setText(dataBean2.getTitle());
            this.tvTag1.setVisibility(dataBean2.isNew() ? 0 : 8);
            this.tvTag2.setVisibility(dataBean2.getIs_recommend());
            this.tvTag3.setVisibility(dataBean2.getStatus() == 1 ? 0 : 8);
            this.tvTag4.setText(e.a(dataBean2.getDump_status() == 1 ? "0szvg9Dg" : "3939jNbO"));
            this.tvStar.setText(dataBean2.getScore());
            this.tvUpdate.setText(dataBean2.getUpdate());
            this.tvHot.setText(String.valueOf(dataBean2.getHot()));
            h.D0(dataBean2.getCover_url(), this.ivCover, 20);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f973c;

        /* compiled from: WeekAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f974c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f974c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f974c;
                if (holder.b.getGlobal_type().equals(e.a("VAU=")) || holder.b.getGlobal_type().equals(e.a("VA0QFAcSQA=="))) {
                    CgReadActivity.l(holder.a.a, holder.b);
                }
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvTag1 = (TextView) c.c(view, R.id.tv_tag1, e.a("UQsGCA9THkcFMlUASU0="), TextView.class);
            holder.tvTag2 = (TextView) c.c(view, R.id.tv_tag2, e.a("UQsGCA9THkcFMlUASk0="), TextView.class);
            holder.tvTag3 = (TextView) c.c(view, R.id.tv_tag3, e.a("UQsGCA9THkcFMlUAS00="), TextView.class);
            holder.tvTag4 = (TextView) c.c(view, R.id.tv_tag4, e.a("UQsGCA9THkcFMlUATE0="), TextView.class);
            holder.tvHot = (TextView) c.c(view, R.id.tv_hot, e.a("UQsGCA9THkcFLlsTXw=="), TextView.class);
            holder.tvUpdate = (TextView) c.c(view, R.id.tv_update, e.a("UQsGCA9THkcFM0QDGR4GTA=="), TextView.class);
            holder.tvStar = (TextView) c.c(view, R.id.tv_star, e.a("UQsGCA9THkcFNUAGCk0="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f973c = b;
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
                holder.tvTag1 = null;
                holder.tvTag2 = null;
                holder.tvTag3 = null;
                holder.tvTag4 = null;
                holder.tvHot = null;
                holder.tvUpdate = null;
                holder.tvStar = null;
                this.f973c.setOnClickListener(null);
                this.f973c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public WeekAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_gkj_week, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
