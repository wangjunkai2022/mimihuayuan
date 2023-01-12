package com.comeback.data.ui.km2;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
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
import com.comeback.data.ui.km2.bean.MMList;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class MMListAdapter extends BaseAbstractAdapter<MMList.DataEntity.ListEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<MMList.DataEntity.ListEntity> {
        public MMListAdapter a;
        public MMList.DataEntity.ListEntity b;
        @BindView
        public RatioImageView ivImg;
        @BindView
        public TextView tvDesc;
        @BindView
        public TextView tvTitle;

        public Holder(View view, MMListAdapter mMListAdapter) {
            super(view);
            this.a = mMListAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(MMList.DataEntity.ListEntity listEntity) {
            MMList.DataEntity.ListEntity listEntity2 = listEntity;
            this.b = listEntity2;
            this.tvTitle.setText(listEntity2.getTitle());
            this.tvDesc.setText(listEntity2.getContent());
            h.x0(listEntity2.getImage(), this.ivImg);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1410c;

        /* compiled from: MMListAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1411c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1411c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1411c;
                MMDetailActivity.l(holder.a.a, holder.ivImg, holder.b.getImage(), holder.b.getId());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.ivImg = (RatioImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), RatioImageView.class);
            holder.tvDesc = (TextView) c.c(view, R.id.tv_desc, e.a("UQsGCA9THkcFIlEUG00="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f1410c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                holder.ivImg = null;
                holder.tvDesc = null;
                this.f1410c.setOnClickListener(null);
                this.f1410c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public MMListAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_km2_mm, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
