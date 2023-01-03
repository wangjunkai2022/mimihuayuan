package com.comeback.data.ui.fulao2.adapter;

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
import com.comeback.data.ui.fulao2.TypeDetailActivity;
import com.comeback.data.ui.fulao2.bean.VideoType;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoTypeAdapter extends BaseAbstractAdapter<VideoType.ResponseBean.CategoriesBean> {

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

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoType.ResponseBean.CategoriesBean categoriesBean) {
            VideoType.ResponseBean.CategoriesBean categoriesBean2 = categoriesBean;
            this.b = categoriesBean2;
            h.u0(categoriesBean2.getCategory_image(), this.ivCover);
            this.tvTitle.setText(categoriesBean2.getCategory_name());
        }
    }

    /* loaded from: classes.dex */
    public class HomeListHolder_ViewBinding implements Unbinder {
        public HomeListHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f744c;

        /* compiled from: VideoTypeAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f745c;

            public a(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f745c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                HomeListHolder homeListHolder = this.f745c;
                TypeDetailActivity.n(homeListHolder.a.a, homeListHolder.b.getCategory_name(), homeListHolder.b.getCategory_id());
            }
        }

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            homeListHolder.ivCover = (ImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            homeListHolder.tvTitle = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQDClUeXw=="));
            this.f744c = b;
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
                this.f744c.setOnClickListener(null);
                this.f744c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VideoTypeAdapter(Context context) {
        super(context);
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder<Lcom/comeback/data/ui/fulao2/bean/VideoType$ResponseBean$CategoriesBean;>; */
    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new HomeListHolder(this.f107c.inflate(R.layout.item_fulao2_video_type, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
