package com.comeback.data.ui.iqiyi.adapter;

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
import com.comeback.data.ui.iqiyi.VideoListActivity;
import com.comeback.data.ui.iqiyi.bean.VideoInfo;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class VideoAdapter extends BaseAbstractAdapter<VideoInfo> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<VideoInfo> {
        public VideoAdapter a;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvTitle;

        public Holder(View view, VideoAdapter videoAdapter) {
            super(view);
            this.a = videoAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoInfo videoInfo) {
            VideoInfo videoInfo2 = videoInfo;
            this.tvTitle.setText(videoInfo2.getName());
            h.F0(videoInfo2.getImg(), this.ivCover, 1);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1225c;

        /* compiled from: VideoAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1226c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1226c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1226c;
                VideoAdapter videoAdapter = holder.a;
                VideoListActivity.l(videoAdapter.a, (ArrayList) videoAdapter.b, holder.getAdapterPosition());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhES1YMB0QGFk1bHAIUQBcENQJSFSAIAhBSVhdB"));
            holder.ivCover = (ImageView) c.a(b, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            this.f1225c = b;
            b.setOnClickListener(new a(this, holder));
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivCover = null;
                holder.tvTitle = null;
                this.f1225c.setOnClickListener(null);
                this.f1225c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VideoAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_iqiyi_video, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
