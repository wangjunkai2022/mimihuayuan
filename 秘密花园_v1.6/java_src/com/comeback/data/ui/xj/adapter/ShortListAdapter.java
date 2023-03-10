package com.comeback.data.ui.xj.adapter;

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
import com.comeback.data.ui.xj.ShortActivity;
import com.comeback.data.ui.xj.bean.VideoBean;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ShortListAdapter extends BaseAbstractAdapter<VideoBean> {

    /* loaded from: classes.dex */
    public static class HomeListHolder extends BaseViewHolder<VideoBean> {
        public ShortListAdapter a;
        @BindView
        public RatioImageView ivCover;
        @BindView
        public TextView tvLikenum;
        @BindView
        public TextView tvTitle;

        public HomeListHolder(View view, ShortListAdapter shortListAdapter) {
            super(view);
            this.a = shortListAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoBean videoBean) {
            VideoBean videoBean2 = videoBean;
            h.B0(videoBean2.getCoverpic(), this.ivCover);
            this.tvTitle.setText(videoBean2.getTitle());
            this.tvLikenum.setText(videoBean2.getUpnum());
        }
    }

    /* loaded from: classes.dex */
    public class HomeListHolder_ViewBinding implements Unbinder {
        public HomeListHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f2301c;

        /* compiled from: ShortListAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f2302c;

            public a(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f2302c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                HomeListHolder homeListHolder = this.f2302c;
                ShortListAdapter shortListAdapter = homeListHolder.a;
                ShortActivity.l(shortListAdapter.a, (ArrayList) shortListAdapter.b, homeListHolder.getAdapterPosition());
            }
        }

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            homeListHolder.ivCover = (RatioImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), RatioImageView.class);
            homeListHolder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            homeListHolder.tvLikenum = (TextView) c.c(view, R.id.tv_likenum, e.a("UQsGCA9THkcFKl0MHQQWBhA="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQDClUeXw=="));
            this.f2301c = b;
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
                homeListHolder.tvLikenum = null;
                this.f2301c.setOnClickListener(null);
                this.f2301c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ShortListAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new HomeListHolder(this.f107c.inflate(R.layout.item_xj_short, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
