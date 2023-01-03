package com.comeback.data.ui.tv91.adapter;

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
import com.comeback.data.ui.tv91.PlayActivity;
import com.comeback.data.ui.tv91.bean.VideoList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoListAdapter extends BaseAbstractAdapter<VideoList.MessageBean.MoviesBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<VideoList.MessageBean.MoviesBean> {
        public VideoListAdapter a;
        public VideoList.MessageBean.MoviesBean b;
        @BindView
        public ImageView ivImg;
        @BindView
        public TextView tvName;
        @BindView
        public TextView tvTime;

        public Holder(View view, VideoListAdapter videoListAdapter) {
            super(view);
            this.a = videoListAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoList.MessageBean.MoviesBean moviesBean) {
            VideoList.MessageBean.MoviesBean moviesBean2 = moviesBean;
            this.b = moviesBean2;
            h.B0(moviesBean2.getCoverImg(), this.ivImg);
            this.tvName.setText(moviesBean2.getName());
            this.tvTime.setText(moviesBean2.getCreateTime());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f2117c;

        /* compiled from: VideoListAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f2118c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f2118c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f2118c;
                PlayActivity.o(holder.a.a, String.valueOf(holder.b.getMovieID()), holder.b.getSourceId());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivImg = (ImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvTime = (TextView) c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
            View b = c.b(view, R.id.fl_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f2117c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                holder.tvName = null;
                holder.tvTime = null;
                this.f2117c.setOnClickListener(null);
                this.f2117c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VideoListAdapter(Context context) {
        super(context);
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder<Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;>; */
    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_tv91_video, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
