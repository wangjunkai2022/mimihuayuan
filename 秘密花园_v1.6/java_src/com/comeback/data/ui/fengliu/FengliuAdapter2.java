package com.comeback.data.ui.fengliu;

import android.content.Context;
import android.text.TextUtils;
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
import com.comeback.data.ui.fengliu.bean.MMInfo2;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class FengliuAdapter2 extends BaseAbstractAdapter<MMInfo2> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<MMInfo2> {
        public MMInfo2 a;
        public FengliuAdapter2 b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvAddress;
        @BindView
        public TextView tvIntro;
        @BindView
        public TextView tvName;
        @BindView
        public TextView tvState;

        public Holder(View view, FengliuAdapter2 fengliuAdapter2) {
            super(view);
            this.b = fengliuAdapter2;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(MMInfo2 mMInfo2) {
            MMInfo2 mMInfo22 = mMInfo2;
            this.a = mMInfo22;
            this.ivCover.setVisibility(TextUtils.isEmpty(mMInfo22.getCoverPictureHrefs()) ? 8 : 0);
            if (mMInfo22.isChaImage()) {
                h.y0(mMInfo22.getCoverPictureHrefs(), this.ivCover);
            } else {
                h.u0(mMInfo22.getCoverPictureHrefs(), this.ivCover);
            }
            this.tvName.setText(mMInfo22.getTitle());
            this.tvState.setText(mMInfo22.getPublished_at());
            this.tvIntro.setText(mMInfo22.getDesc());
            this.tvAddress.setText(mMInfo22.getCityCodeReadable());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f673c;

        /* compiled from: FengliuAdapter2$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f674c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f674c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f674c;
                InfoActivity.l(holder.b.a, holder.a);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvState = (TextView) c.c(view, R.id.tv_state, e.a("UQsGCA9THkcFNUAGDA9E"), TextView.class);
            holder.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
            holder.tvAddress = (TextView) c.c(view, R.id.tv_address, e.a("UQsGCA9THkcFJ1ADCg8QGBA="), TextView.class);
            holder.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f673c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvName = null;
                holder.tvState = null;
                holder.tvIntro = null;
                holder.tvAddress = null;
                holder.ivCover = null;
                this.f673c.setOnClickListener(null);
                this.f673c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public FengliuAdapter2(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_fengliu, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
