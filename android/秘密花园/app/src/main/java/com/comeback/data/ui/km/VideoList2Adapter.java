package com.comeback.data.ui.km;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.km.bean.Video;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoList2Adapter extends BaseAbstractAdapter<Video> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Video> {
        public VideoList2Adapter a;
        public Video b;
        @BindView
        public ImageView ivImg;

        public Holder(View view, VideoList2Adapter videoList2Adapter) {
            super(view);
            this.a = videoList2Adapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Video video) {
            Video video2 = video;
            this.b = video2;
            h.B0(video2.getMv_img_url(), this.ivImg);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1309c;

        /* compiled from: VideoList2Adapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1310c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1310c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1310c;
                VideoPlayActivity.m(holder.a.a, holder.b);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.iv_cover, e.a("UQsGCA9THloFL1kAX0oCBVNCDgEfG1ZXU0FbCS4DBhx0DgoHABZdFA=="));
            holder.ivImg = (ImageView) c.a(b, R.id.iv_cover, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
            this.f1309c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                this.f1309c.setOnClickListener(null);
                this.f1309c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VideoList2Adapter(Context context) {
        super(context);
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder<Lcom/comeback/data/ui/km/bean/Video;>; */
    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_km_video2, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
