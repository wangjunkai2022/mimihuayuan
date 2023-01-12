package com.comeback.data.ui.km2;

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
import com.comeback.data.ui.km2.bean.Km2Video;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoList2Adapter extends BaseAbstractAdapter<Km2Video> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Km2Video> {
        public VideoList2Adapter a;
        public Km2Video b;
        @BindView
        public ImageView ivImg;

        public Holder(View view, VideoList2Adapter videoList2Adapter) {
            super(view);
            this.a = videoList2Adapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Km2Video km2Video) {
            Km2Video km2Video2 = km2Video;
            this.b = km2Video2;
            h.B0(km2Video2.getCover(), this.ivImg);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1433c;

        /* compiled from: VideoList2Adapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1434c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1434c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1434c;
                VideoPlayActivity.m(holder.a.a, holder.b.isLandscape(), holder.b.getId());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.iv_cover, e.a("UQsGCA9THloFL1kAX0oCBVNCDgEfG1ZXU0FbCS4DBhx0DgoHABZdFA=="));
            holder.ivImg = (ImageView) c.a(b, R.id.iv_cover, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
            this.f1433c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                this.f1433c.setOnClickListener(null);
                this.f1433c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VideoList2Adapter(Context context) {
        super(context);
    }

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
