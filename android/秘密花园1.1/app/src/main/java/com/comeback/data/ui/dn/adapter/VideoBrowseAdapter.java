package com.comeback.data.ui.dn.adapter;

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
import com.comeback.data.ui.dn.VideoListActivity;
import com.comeback.data.ui.dn.bean.VideoInfo;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class VideoBrowseAdapter extends BaseAbstractAdapter<VideoInfo> {

    /* loaded from: classes.dex */
    public static class HomeListHolder extends BaseViewHolder<VideoInfo> {
        public VideoBrowseAdapter a;
        @BindView
        public ImageView mIvImg;
        @BindView
        public TextView mTvTitle;

        public HomeListHolder(View view, VideoBrowseAdapter videoBrowseAdapter) {
            super(view);
            this.a = videoBrowseAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoInfo videoInfo) {
            VideoInfo videoInfo2 = videoInfo;
            this.mTvTitle.setText(videoInfo2.getTitle());
            h.B0(videoInfo2.getThumb(), this.mIvImg);
        }
    }

    /* loaded from: classes.dex */
    public class HomeListHolder_ViewBinding implements Unbinder {
        public HomeListHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f565c;

        /* compiled from: VideoBrowseAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f566c;

            public a(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f566c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                HomeListHolder homeListHolder = this.f566c;
                VideoBrowseAdapter videoBrowseAdapter = homeListHolder.a;
                VideoListActivity.l(videoBrowseAdapter.a, (ArrayList) videoBrowseAdapter.b, homeListHolder.getAdapterPosition());
            }
        }

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            homeListHolder.mIvImg = (ImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THl46EH0KH00="), ImageView.class);
            homeListHolder.mTvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THl4nEGAODAYGTA=="), TextView.class);
            View b = c.b(view, R.id.fl_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f565c = b;
            b.setOnClickListener(new a(this, homeListHolder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            HomeListHolder homeListHolder = this.b;
            if (homeListHolder != null) {
                this.b = null;
                homeListHolder.mIvImg = null;
                homeListHolder.mTvTitle = null;
                this.f565c.setOnClickListener(null);
                this.f565c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VideoBrowseAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new HomeListHolder(this.f107c.inflate(R.layout.item_dn_video, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
