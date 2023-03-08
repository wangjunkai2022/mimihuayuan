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
import com.comeback.data.ui.commom.PicBrowseActivity;
import com.comeback.data.ui.ins.bean.ImageList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class Image2Adapter extends BaseAbstractAdapter<ImageList.DataEntity.ResultListEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ImageList.DataEntity.ResultListEntity> {
        public Image2Adapter a;
        public ImageList.DataEntity.ResultListEntity b;
        @BindView
        public ImageView ivImg;

        public Holder(View view, Image2Adapter image2Adapter) {
            super(view);
            this.a = image2Adapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ImageList.DataEntity.ResultListEntity resultListEntity) {
            ImageList.DataEntity.ResultListEntity resultListEntity2 = resultListEntity;
            this.b = resultListEntity2;
            h.u0(resultListEntity2.getFileList().get(0).getCoverUrl(), this.ivImg);
        }

        @OnClick
        public void onClick() {
            PicBrowseActivity.l(this.a.a, this.b.getAllFile());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1166c;

        /* compiled from: Image2Adapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1167c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1167c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1167c.onClick();
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivImg = (ImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
            View b = c.b(view, R.id.fl_root, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f1166c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                this.f1166c.setOnClickListener(null);
                this.f1166c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public Image2Adapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_ins_image2, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
