package com.comeback.data.ui.slf.adapter;

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
import com.comeback.data.App;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.secret.garden.R;
import f.d.a.c;
import f.d.a.j;
import f.e.a.e;
import f.e.a.j.k0.h.e.b;

/* loaded from: classes.dex */
public class PicAdapter extends BaseAbstractAdapter<String> {

    /* renamed from: d  reason: collision with root package name */
    public View.OnClickListener f2011d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<String> {
        public PicAdapter a;
        @BindView
        public ImageView ivImg;

        public Holder(View view, PicAdapter picAdapter) {
            super(view);
            this.a = picAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(String str) {
            String str2 = str;
            ImageView imageView = this.ivImg;
            boolean contains = str2.contains(e.a("GRECAg5dTUsH"));
            j d2 = c.d(App.b);
            Object obj = str2;
            if (contains) {
                obj = new b(str2);
            }
            d2.o(obj).q(R.drawable.default_img_bg).p(Integer.MIN_VALUE, Integer.MIN_VALUE).G(imageView);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f2012c;

        /* compiled from: PicAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f2013c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f2013c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f2013c;
                View.OnClickListener onClickListener = holder.a.f2011d;
                if (onClickListener != null) {
                    onClickListener.onClick(holder.itemView);
                }
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = d.c.c.b(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAX0oCBVNCDgEfG1ZXU0FXCxEJCEw="));
            holder.ivImg = (ImageView) d.c.c.a(b, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
            this.f2012c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                this.f2012c.setOnClickListener(null);
                this.f2012c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public PicAdapter(Context context) {
        super(context);
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder<Ljava/lang/String;>; */
    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_pic, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
