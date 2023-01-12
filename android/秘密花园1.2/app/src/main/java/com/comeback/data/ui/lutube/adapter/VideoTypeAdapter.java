package com.comeback.data.ui.lutube.adapter;

import android.content.Context;
import android.text.TextUtils;
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
import com.comeback.data.App;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.lutube.VideoListActivity;
import com.comeback.data.ui.lutube.bean.VideoType;
import com.comeback.secret.garden.R;
import d.c.b;
import f.d.a.c;
import f.e.a.e;
import f.e.a.j.h0.m.f.a;

/* loaded from: classes.dex */
public class VideoTypeAdapter extends BaseAbstractAdapter<VideoType.ResponseBean.CategoriesBean> {

    /* renamed from: d  reason: collision with root package name */
    public boolean f1493d;

    /* loaded from: classes.dex */
    public static class HomeListHolder extends BaseViewHolder<VideoType.ResponseBean.CategoriesBean> {
        public VideoTypeAdapter a;
        public VideoType.ResponseBean.CategoriesBean b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvTitle;

        public HomeListHolder(View view, VideoTypeAdapter videoTypeAdapter) {
            super(view);
            this.a = videoTypeAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoType.ResponseBean.CategoriesBean categoriesBean) {
            VideoType.ResponseBean.CategoriesBean categoriesBean2 = categoriesBean;
            this.b = categoriesBean2;
            String category_image = categoriesBean2.getCategory_image();
            ImageView imageView = this.ivCover;
            if (!TextUtils.isEmpty(category_image)) {
                c.d(App.b).o(new a(category_image)).q(R.drawable.default_img_bg).G(imageView);
            }
            this.tvTitle.setText(categoriesBean2.getCategory_name());
        }
    }

    /* loaded from: classes.dex */
    public class HomeListHolder_ViewBinding implements Unbinder {
        public HomeListHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1494c;

        /* compiled from: VideoTypeAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f1495c;

            public a(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f1495c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                HomeListHolder homeListHolder = this.f1495c;
                VideoListActivity.n(homeListHolder.a.a, homeListHolder.b.getCategory_id(), homeListHolder.a.f1493d, homeListHolder.b.getCategory_name());
            }
        }

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            homeListHolder.ivCover = (ImageView) d.c.c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            homeListHolder.tvTitle = (TextView) d.c.c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            View b = d.c.c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQDClUeXw=="));
            this.f1494c = b;
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
                this.f1494c.setOnClickListener(null);
                this.f1494c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VideoTypeAdapter(Context context, boolean z) {
        super(context);
        this.f1493d = z;
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new HomeListHolder(this.f107c.inflate(R.layout.item_lutube_video_type, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
