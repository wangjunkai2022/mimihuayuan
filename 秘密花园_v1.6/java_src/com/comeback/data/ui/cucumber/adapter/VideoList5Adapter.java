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
import d.c.c;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.k.b;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class VideoList5Adapter extends BaseAbstractAdapter<Video> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Video> {
        public VideoList5Adapter a;
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
        public TextView tvSign;

        public Holder(View view, VideoList5Adapter videoList5Adapter) {
            super(view);
            this.a = videoList5Adapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Video video) {
            Video video2 = video;
            this.b = video2;
            String str = "";
            try {
                str = new JSONObject(video2.getCover().replace(b.O, "")).getString(e.a("QQcREAIQWF8sFVkGFAY="));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            h.u0(a.l(new StringBuilder(), b.P, str), this.ivImg);
            this.tvName.setText(video2.getMovName());
            this.tvDuration.setText(video2.getMins());
            this.tvPlayCount.setText(video2.getStrPlayCnt());
            this.tvSign.setText(video2.getMovSnOri());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f478c;

        /* compiled from: VideoList5Adapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f479c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f479c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f479c;
                MovieDetailActivity.p(holder.a.a, holder.b);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivImg = (RatioImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), RatioImageView.class);
            holder.tvDuration = (TextView) c.c(view, R.id.tv_duration, e.a("UQsGCA9THkcFIkEVGR4KBFlF"), TextView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvSign = (TextView) c.c(view, R.id.tv_sign, e.a("UQsGCA9THkcFNV0AFk0="), TextView.class);
            holder.tvPlayCount = (TextView) c.c(view, R.id.tv_play_count, e.a("UQsGCA9THkcFNlgGASkMHlkWRA=="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f478c = b;
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
                holder.tvSign = null;
                holder.tvPlayCount = null;
                this.f478c.setOnClickListener(null);
                this.f478c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VideoList5Adapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_cucumber_video5, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
