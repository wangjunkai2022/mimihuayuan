package com.comeback.data.ui.md.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.Unbinder;
import com.comeback.data.App;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.commom.PlayActivity;
import com.comeback.data.ui.md.bean.VideoList;
import com.comeback.secret.garden.R;
import d.c.b;
import f.d.a.c;
import f.e.a.e;
import f.e.a.j.e0.d.f.a;

/* loaded from: classes.dex */
public class VideoAdapter extends BaseAbstractAdapter<VideoList.DataEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<VideoList.DataEntity> {
        public VideoAdapter a;
        public VideoList.DataEntity b;
        @BindView
        public ImageView ivImg;

        public Holder(View view, VideoAdapter videoAdapter) {
            super(view);
            this.a = videoAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoList.DataEntity dataEntity) {
            VideoList.DataEntity dataEntity2 = dataEntity;
            this.b = dataEntity2;
            String thumb = dataEntity2.getThumb();
            ImageView imageView = this.ivImg;
            if (TextUtils.isEmpty(thumb)) {
                return;
            }
            c.d(App.b).o(new a(thumb)).q(R.drawable.default_img_bg).G(imageView);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1715c;

        /* compiled from: VideoAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1716c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1716c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1716c;
                PlayActivity.m(holder.a.a, holder.b.getVideo_url(), holder.b.getTitle());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = d.c.c.b(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAX0oCBVNCDgEfG1ZXU0FbCTsGCghcRQ=="));
            holder.ivImg = (ImageView) d.c.c.a(b, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
            this.f1715c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                this.f1715c.setOnClickListener(null);
                this.f1715c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VideoAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_md_video, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
