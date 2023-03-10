package com.comeback.data.ui.cucumber.adapter;

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
import com.comeback.data.ui.cucumber.MovieDetailActivity;
import com.comeback.data.ui.cucumber.bean.Video;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import java.util.List;
/* loaded from: classes.dex */
public class VideoList3Adapter extends BaseAbstractAdapter<Video> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Video> {
        public VideoList3Adapter a;
        public Video b;
        @BindView
        public RatioImageView ivImg;
        @BindView
        public TextView tvDuration;
        @BindView
        public TextView tvName;
        @BindView
        public TextView tvPlayCount;
        @BindView
        public TextView tvTag1;
        @BindView
        public TextView tvTag2;
        @BindView
        public TextView tvTag3;
        @BindView
        public TextView tv_pay;

        public Holder(View view, VideoList3Adapter videoList3Adapter) {
            super(view);
            this.a = videoList3Adapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Video video) {
            Video video2 = video;
            this.b = video2;
            h.u0(video2.getVideoCover(), this.ivImg);
            this.tvName.setText(video2.getMovName());
            this.tvDuration.setText(video2.getMins());
            TextView textView = this.tvPlayCount;
            textView.setText(video2.getStrPlayCnt() + "   " + video2.getMovSn());
            List<Video.TagsBean> relTagName = video2.getRelTagName();
            this.tvTag1.setVisibility(8);
            this.tvTag2.setVisibility(8);
            this.tvTag3.setVisibility(8);
            if (relTagName != null) {
                if (relTagName.size() > 0) {
                    this.tvTag1.setText(relTagName.get(0).getName());
                    this.tvTag1.setVisibility(0);
                }
                if (relTagName.size() > 1) {
                    this.tvTag2.setText(relTagName.get(1).getName());
                    this.tvTag2.setVisibility(0);
                }
                if (relTagName.size() > 2) {
                    this.tvTag3.setText(relTagName.get(2).getName());
                    this.tvTag3.setVisibility(0);
                }
            }
            this.tv_pay.setVisibility(video2.getMovPackageId() == 1 ? 0 : 8);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f474c;

        /* compiled from: VideoList3Adapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f475c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f475c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f475c;
                MovieDetailActivity.p(holder.a.a, holder.b);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivImg = (RatioImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), RatioImageView.class);
            holder.tvDuration = (TextView) c.c(view, R.id.tv_duration, e.a("UQsGCA9THkcFIkEVGR4KBFlF"), TextView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvTag1 = (TextView) c.c(view, R.id.tv_tag1, e.a("UQsGCA9THkcFMlUASU0="), TextView.class);
            holder.tvTag2 = (TextView) c.c(view, R.id.tv_tag2, e.a("UQsGCA9THkcFMlUASk0="), TextView.class);
            holder.tvTag3 = (TextView) c.c(view, R.id.tv_tag3, e.a("UQsGCA9THkcFMlUAS00="), TextView.class);
            holder.tvPlayCount = (TextView) c.c(view, R.id.tv_play_count, e.a("UQsGCA9THkcFNlgGASkMHlkWRA=="), TextView.class);
            holder.tv_pay = (TextView) c.c(view, R.id.tv_pay, e.a("UQsGCA9THkcFOUQGAU0="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f474c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                holder.tvDuration = null;
                holder.tvName = null;
                holder.tvTag1 = null;
                holder.tvTag2 = null;
                holder.tvTag3 = null;
                holder.tvPlayCount = null;
                holder.tv_pay = null;
                this.f474c.setOnClickListener(null);
                this.f474c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VideoList3Adapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_cucumber_video3, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
