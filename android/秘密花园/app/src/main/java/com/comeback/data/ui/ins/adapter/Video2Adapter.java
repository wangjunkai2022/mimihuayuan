package com.comeback.data.ui.ins.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.commom.PlayActivity;
import com.comeback.data.ui.ins.bean.VideoList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class Video2Adapter extends BaseAbstractAdapter<VideoList.DataEntity.ResultListEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<VideoList.DataEntity.ResultListEntity> {
        public Video2Adapter a;
        public VideoList.DataEntity.ResultListEntity b;
        @BindView
        public ImageView ivImg;

        public Holder(View view, Video2Adapter video2Adapter) {
            super(view);
            this.a = video2Adapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoList.DataEntity.ResultListEntity resultListEntity) {
            VideoList.DataEntity.ResultListEntity resultListEntity2 = resultListEntity;
            this.b = resultListEntity2;
            h.u0(resultListEntity2.getFileList().get(0).getCoverUrl(), this.ivImg);
        }

        @OnClick
        public void onClick() {
            PlayActivity.m(this.a.a, this.b.getFileList().get(0).getPostVideoFile().getPostparam().getPlay_url(), this.b.getTitle());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1097c;

        /* compiled from: Video2Adapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1098c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1098c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1098c.onClick();
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivImg = (ImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
            View b = c.b(view, R.id.fl_root, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f1097c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                this.f1097c.setOnClickListener(null);
                this.f1097c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public Video2Adapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_ins_video2, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
