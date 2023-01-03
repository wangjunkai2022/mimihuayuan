package com.comeback.data.ui.slf.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import butterknife.BindView;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseHeaderAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.slf.ImageReadActivity;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ImageAdapter extends BaseHeaderAdapter<SLFItemBean> {

    /* loaded from: classes.dex */
    public static class HeadHolder extends BaseViewHolder<String> {
        @BindView
        public TextView tvName;

        public HeadHolder(View view, ImageAdapter imageAdapter) {
            super(view);
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(String str) {
            this.tvName.setText(str);
        }
    }

    /* loaded from: classes.dex */
    public class HeadHolder_ViewBinding implements Unbinder {
        public HeadHolder b;

        @UiThread
        public HeadHolder_ViewBinding(HeadHolder headHolder, View view) {
            this.b = headHolder;
            headHolder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            HeadHolder headHolder = this.b;
            if (headHolder != null) {
                this.b = null;
                headHolder.tvName = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<SLFItemBean> {
        public ImageAdapter a;
        public SLFItemBean b;
        @BindView
        public ImageView ivImg;
        @BindView
        public TextView tvName;

        public Holder(View view, ImageAdapter imageAdapter) {
            super(view);
            this.a = imageAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(SLFItemBean sLFItemBean) {
            SLFItemBean sLFItemBean2 = sLFItemBean;
            this.b = sLFItemBean2;
            h.N0(sLFItemBean2.getImg(), this.ivImg, 0);
            this.tvName.setText(sLFItemBean2.getName());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f2004c;

        /* compiled from: ImageAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f2005c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f2005c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f2005c;
                ImageReadActivity.l(holder.a.a, holder.b.getId());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivImg = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQQCl0EE00="));
            this.f2004c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                holder.tvName = null;
                this.f2004c.setOnClickListener(null);
                this.f2004c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ImageAdapter(Context context, int i2) {
        super(context);
        this.f112d = i2;
    }

    @Override // com.comeback.data.base.BaseHeaderAdapter
    public Object f(int i2) {
        return e.a("0NDdjev63o39g6/Z");
    }

    @Override // com.comeback.data.base.BaseHeaderAdapter
    @NonNull
    public BaseViewHolder<SLFItemBean> g(@NonNull ViewGroup viewGroup, int i2) {
        return new Holder(this.f107c.inflate(R.layout.item_slf_image, viewGroup, false), this);
    }

    @Override // com.comeback.data.base.BaseHeaderAdapter
    public BaseViewHolder h(ViewGroup viewGroup, int i2) {
        return new HeadHolder(this.f107c.inflate(R.layout.item_slf_title, viewGroup, false), this);
    }
}
