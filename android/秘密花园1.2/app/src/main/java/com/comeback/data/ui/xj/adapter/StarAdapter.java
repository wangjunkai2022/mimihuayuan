package com.comeback.data.ui.xj.adapter;

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
import com.comeback.data.ui.xj.SpecialDetailActivity;
import com.comeback.data.ui.xj.bean.Channel;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class StarAdapter extends BaseAbstractAdapter<Channel.DataBean.RowsBean> {

    /* loaded from: classes.dex */
    public static class HomeListHolder extends BaseViewHolder<Channel.DataBean.RowsBean> {
        public StarAdapter a;
        public Channel.DataBean.RowsBean b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvTitle;

        public HomeListHolder(View view, StarAdapter starAdapter) {
            super(view);
            this.a = starAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Channel.DataBean.RowsBean rowsBean) {
            Channel.DataBean.RowsBean rowsBean2 = rowsBean;
            this.b = rowsBean2;
            h.A0(rowsBean2.getAvatar(), this.ivCover);
            this.tvTitle.setText(rowsBean2.getSpname());
        }
    }

    /* loaded from: classes.dex */
    public class HomeListHolder_ViewBinding implements Unbinder {
        public HomeListHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f2302c;

        /* compiled from: StarAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f2303c;

            public a(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f2303c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                HomeListHolder homeListHolder = this.f2303c;
                SpecialDetailActivity.w(homeListHolder.a.a, homeListHolder.b);
            }
        }

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            homeListHolder.ivCover = (ImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            homeListHolder.tvTitle = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQDClUeXw=="));
            this.f2302c = b;
            b.setOnClickListener(new a(this, homeListHolder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            HomeListHolder homeListHolder = this.b;
            if (homeListHolder != null) {
                this.b = null;
                homeListHolder.ivCover = null;
                homeListHolder.tvTitle = null;
                this.f2302c.setOnClickListener(null);
                this.f2302c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public StarAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new HomeListHolder(this.f107c.inflate(R.layout.item_xj_star, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
