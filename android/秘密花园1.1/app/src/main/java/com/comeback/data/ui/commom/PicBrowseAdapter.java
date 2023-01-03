package com.comeback.data.ui.commom;

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
import f.e.a.e;

/* loaded from: classes.dex */
public class PicBrowseAdapter extends BaseAbstractAdapter<String> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<String> {
        public String a;
        @BindView
        public ImageView mIvImg;

        public Holder(View view) {
            super(view);
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(String str) {
            this.a = str;
            c.d(App.b).p(this.a).q(R.drawable.default_img_bg).p(Integer.MIN_VALUE, Integer.MIN_VALUE).G(this.mIvImg);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.mIvImg = (ImageView) d.c.c.c(view, R.id.iv_img, e.a("UQsGCA9THl46EH0KH00="), ImageView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.mIvImg = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public PicBrowseAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_mm_cartoon_pic, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
