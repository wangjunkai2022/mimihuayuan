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
import com.comeback.data.App;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.commom.PicBrowseActivity;
import com.comeback.data.ui.ins.UserCenterActivity;
import com.comeback.data.ui.ins.bean.ImageList;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ImageAdapter extends BaseAbstractAdapter<ImageList.DataEntity.ResultListEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ImageList.DataEntity.ResultListEntity> {
        public ImageAdapter a;
        public ImageList.DataEntity.ResultListEntity b;
        @BindView
        public ImageView ivHead;
        @BindView
        public ImageView ivImg;
        @BindView
        public TextView tvTitle;
        @BindView
        public TextView tvUser;
        @BindView
        public TextView tvViews;

        public Holder(View view, ImageAdapter imageAdapter) {
            super(view);
            this.a = imageAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ImageList.DataEntity.ResultListEntity resultListEntity) {
            this.b = resultListEntity;
            ViewGroup.LayoutParams layoutParams = this.ivImg.getLayoutParams();
            layoutParams.width = (int) (((double) App.f103d) / 2.0d);
            if (getAdapterPosition() == 1) {
                layoutParams.height = (int) (((double) layoutParams.width) * 0.87d);
            } else {
                layoutParams.height = layoutParams.width;
            }
            this.ivImg.setLayoutParams(layoutParams);
            this.tvTitle.setText(this.b.getContent());
            h.u0(this.b.getFileList().get(0).getCoverUrl(), this.ivImg);
            h.z0(this.b.getUserInfo().getHeadImgUrl(), this.ivHead);
            this.tvUser.setText(this.b.getUserInfo().getUsername());
            this.tvViews.setText(String.valueOf(this.b.getReadingCount()));
        }

        @OnClick
        public void onClick(View view) {
            int id = view.getId();
            if (id == R.id.ll_root) {
                PicBrowseActivity.l(this.a.a, this.b.getAllFile());
            } else if (id == R.id.ll_user) {
                UserCenterActivity.t(this.a.a, this.b.getUserInfo().getUsername(), this.b.getUserInfo().getUserId(), this.b.getUserInfo().getHeadImgUrl());
            }
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1093c;

        /* renamed from: d  reason: collision with root package name */
        public View f1094d;

        /* compiled from: ImageAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1095c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1095c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1095c.onClick(view);
            }
        }

        /* compiled from: ImageAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class b extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1096c;

            public b(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1096c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1096c.onClick(view);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivImg = (ImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.ivHead = (ImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), ImageView.class);
            holder.tvUser = (TextView) c.c(view, R.id.tv_user, e.a("UQsGCA9THkcFM0cCCk0="), TextView.class);
            holder.tvViews = (TextView) c.c(view, R.id.tv_views, e.a("UQsGCA9THkcFMF0CDxlE"), TextView.class);
            View b2 = c.b(view, R.id.ll_user, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f1093c = b2;
            b2.setOnClickListener(new a(this, holder));
            View b3 = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f1094d = b3;
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
                holder.tvViews = null;
                this.f1093c.setOnClickListener(null);
                this.f1093c = null;
                this.f1094d.setOnClickListener(null);
                this.f1094d = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ImageAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_ins_image, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
