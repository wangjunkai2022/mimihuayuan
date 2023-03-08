package com.comeback.data.ui.maomi.adapter;

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
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.maomi.NovelReadActivity;
import com.comeback.data.ui.maomi.bean.NovelList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class NovelListAdapter extends BaseAbstractAdapter<NovelList.DataBean> {

    /* loaded from: classes.dex */
    public static class HomeListHolder extends BaseViewHolder<NovelList.DataBean> {
        public NovelListAdapter a;
        public NovelList.DataBean b;
        @BindView
        public TextView mTvName;
        @BindView
        public TextView mTvTime;

        public HomeListHolder(View view, NovelListAdapter novelListAdapter) {
            super(view);
            this.a = novelListAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(NovelList.DataBean dataBean) {
            NovelList.DataBean dataBean2 = dataBean;
            this.b = dataBean2;
            this.mTvTime.setText(dataBean2.getCreate_at());
            this.mTvName.setText(dataBean2.getTitle());
        }
    }

    /* loaded from: classes.dex */
    public class HomeListHolder_ViewBinding implements Unbinder {
        public HomeListHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1672c;

        /* compiled from: NovelListAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f1673c;

            public a(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f1673c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                HomeListHolder homeListHolder = this.f1673c;
                NovelReadActivity.l(homeListHolder.a.a, homeListHolder.b.getTitle(), homeListHolder.b.getUrl());
            }
        }

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            homeListHolder.mTvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THl4nEHoGFQ9E"), TextView.class);
            homeListHolder.mTvTime = (TextView) c.c(view, R.id.tv_time, e.a("UQsGCA9THl4nEGAOFQ9E"), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQDClUeXw=="));
            this.f1672c = b;
            b.setOnClickListener(new a(this, homeListHolder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            HomeListHolder homeListHolder = this.b;
            if (homeListHolder != null) {
                this.b = null;
                homeListHolder.mTvName = null;
                homeListHolder.mTvTime = null;
                this.f1672c.setOnClickListener(null);
                this.f1672c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public NovelListAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new HomeListHolder(this.f107c.inflate(R.layout.item_maomi_novel2, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
