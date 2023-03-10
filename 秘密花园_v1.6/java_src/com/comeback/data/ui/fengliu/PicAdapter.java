package com.comeback.data.ui.fengliu;

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
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class PicAdapter extends BaseAbstractAdapter<String> {

    /* renamed from: d  reason: collision with root package name */
    public boolean f688d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<String> {
        public PicAdapter a;
        @BindView
        public ImageView ivImg;

        public Holder(View view, PicAdapter picAdapter) {
            super(view);
            this.a = picAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(String str) {
            String str2 = str;
            if (this.a.f688d) {
                h.y0(str2, this.ivImg);
            } else {
                h.u0(str2, this.ivImg);
            }
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivImg = (ImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public PicAdapter(Context context, boolean z) {
        super(context);
        this.f688d = z;
    }

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
