package com.comeback.data.ui.hg;

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
import com.comeback.data.ui.hg.bean.VideoList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoListAdapter extends BaseAbstractAdapter<VideoList.DataBean> {

    /* loaded from: classes.dex */
    public static class HomeListHolder extends BaseViewHolder<VideoList.DataBean> {
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvDuration;
        @BindView
        public TextView tvTitle;

        public HomeListHolder(View view, VideoListAdapter videoListAdapter) {
            super(view);
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoList.DataBean dataBean) {
            VideoList.DataBean dataBean2 = dataBean;
            h.u0(dataBean2.getCover(), this.ivCover);
            TextView textView = this.tvDuration;
            textView.setText(dataBean2.getMins() + e.a("0urljfns"));
            this.tvTitle.setText(dataBean2.getMovName());
        }
    }

    /* loaded from: classes.dex */
    public class HomeListHolder_ViewBinding implements Unbinder {
        public HomeListHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1010c;

        /* compiled from: VideoListAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f1011c;

            public a(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f1011c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                if (this.f1011c != null) {
                    h.n1(e.a("3936jez/36nxgKPRnNLug7Tfi9PYm4Sf"));
                    return;
                }
                throw null;
            }
        }

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            homeListHolder.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            homeListHolder.tvDuration = (TextView) c.c(view, R.id.tv_duration, e.a("UQsGCA9THkcFIkEVGR4KBFlF"), TextView.class);
            homeListHolder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQUA0A3FAsaPkUORA=="));
            this.f1010c = b;
            b.setOnClickListener(new a(this, homeListHolder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            HomeListHolder homeListHolder = this.b;
            if (homeListHolder != null) {
                this.b = null;
                homeListHolder.ivCover = null;
                homeListHolder.tvDuration = null;
                homeListHolder.tvTitle = null;
                this.f1010c.setOnClickListener(null);
                this.f1010c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VideoListAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new HomeListHolder(this.f107c.inflate(R.layout.item_hg_video, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
