package com.comeback.data.ui.gdian.adapter;

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
import com.comeback.data.ui.gdian.ImageReadActivity;
import com.comeback.data.ui.gdian.bean.ImageList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ImageAdapter extends BaseAbstractAdapter<ImageList.DataEntity.ImageEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ImageList.DataEntity.ImageEntity> {
        public ImageAdapter a;
        public ImageList.DataEntity.ImageEntity b;
        @BindView
        public ImageView ivImg;
        @BindView
        public TextView tvDesc;
        @BindView
        public TextView tvTitle;

        public Holder(View view, ImageAdapter imageAdapter) {
            super(view);
            this.a = imageAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ImageList.DataEntity.ImageEntity imageEntity) {
            ImageList.DataEntity.ImageEntity imageEntity2 = imageEntity;
            this.b = imageEntity2;
            this.tvTitle.setText(imageEntity2.getAtlas_name());
            h.u0(this.b.getAtlas_cover(), this.ivImg);
            TextView textView = this.tvDesc;
            textView.setText(this.b.getWatch_countText() + e.a("2N//") + this.b.getAtlas_long() + e.a("Zw=="));
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f814c;

        /* compiled from: ImageAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f815c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f815c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f815c;
                ImageReadActivity.m(holder.a.a, String.valueOf(holder.b.getAtlas_id()));
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivImg = (ImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvDesc = (TextView) c.c(view, R.id.tv_desc, e.a("UQsGCA9THkcFIlEUG00="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f814c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                holder.tvTitle = null;
                holder.tvDesc = null;
                this.f814c.setOnClickListener(null);
                this.f814c = null;
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
        return new Holder(this.f107c.inflate(R.layout.item_gdian_image, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
