package com.comeback.data.ui.ins.adapter;

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
import butterknife.OnClick;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.commom.PlayActivity;
import com.comeback.data.ui.ins.UserCenterActivity;
import com.comeback.data.ui.ins.bean.VideoList;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoAdapter extends BaseAbstractAdapter<VideoList.DataEntity.ResultListEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<VideoList.DataEntity.ResultListEntity> {
        public VideoAdapter a;
        public VideoList.DataEntity.ResultListEntity b;
        @BindView
        public ImageView ivHead;
        @BindView
        public ImageView ivImg;
        @BindView
        public TextView tvDuration;
        @BindView
        public TextView tvTitle;
        @BindView
        public TextView tvUser;

        public Holder(View view, VideoAdapter videoAdapter) {
            super(view);
            this.a = videoAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoList.DataEntity.ResultListEntity resultListEntity) {
            VideoList.DataEntity.ResultListEntity resultListEntity2 = resultListEntity;
            this.b = resultListEntity2;
            this.tvTitle.setText(resultListEntity2.getContent());
            VideoList.DataEntity.ResultListEntity.FileListEntity fileListEntity = this.b.getFileList().get(0);
            h.u0(fileListEntity.getCoverUrl(), this.ivImg);
            h.z0(this.b.getUserInfo().getHeadImgUrl(), this.ivHead);
            this.tvUser.setText(this.b.getUserInfo().getUsername());
            this.tvDuration.setText(h.f1(fileListEntity.getDuration()));
        }

        @OnClick
        public void onClick(View view) {
            int id = view.getId();
            if (id == R.id.ll_root) {
                PlayActivity.m(this.a.a, this.b.getFileList().get(0).getPostVideoFile().getPostparam().getPlay_url(), this.b.getTitle());
            } else if (id != R.id.ll_user) {
            } else {
                UserCenterActivity.u(this.a.a, this.b.getUserInfo().getUsername(), this.b.getUserInfo().getUserId(), this.b.getUserInfo().getHeadImgUrl());
            }
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1099c;

        /* renamed from: d  reason: collision with root package name */
        public View f1100d;

        /* compiled from: VideoAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1101c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1101c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1101c.onClick(view);
            }
        }

        /* compiled from: VideoAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class b extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1102c;

            public b(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1102c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1102c.onClick(view);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivImg = (ImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.ivHead = (ImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), ImageView.class);
            holder.tvUser = (TextView) c.c(view, R.id.tv_user, e.a("UQsGCA9THkcFM0cCCk0="), TextView.class);
            holder.tvDuration = (TextView) c.c(view, R.id.tv_duration, e.a("UQsGCA9THkcFIkEVGR4KBFlF"), TextView.class);
            View b2 = c.b(view, R.id.ll_user, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f1099c = b2;
            b2.setOnClickListener(new a(this, holder));
            View b3 = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f1100d = b3;
            b3.setOnClickListener(new b(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                holder.tvTitle = null;
                holder.ivHead = null;
                holder.tvUser = null;
                holder.tvDuration = null;
                this.f1099c.setOnClickListener(null);
                this.f1099c = null;
                this.f1100d.setOnClickListener(null);
                this.f1100d = null;
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
        return new Holder(this.f107c.inflate(R.layout.item_ins_video, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
