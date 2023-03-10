package com.comeback.data.ui.md.adapter;

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
import com.comeback.data.ui.md.ChanelActivity;
import com.comeback.data.ui.md.bean.ChanelList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class ChanelAdapter extends BaseAbstractAdapter<ChanelList.DataEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ChanelList.DataEntity> {
        public ChanelAdapter a;
        public ChanelList.DataEntity b;
        @BindView
        public ImageView ivImg;
        @BindView
        public TextView tvDesc;
        @BindView
        public TextView tvTitle;
        @BindView
        public TextView tvTotal;

        public Holder(View view, ChanelAdapter chanelAdapter) {
            super(view);
            this.a = chanelAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ChanelList.DataEntity dataEntity) {
            ChanelList.DataEntity dataEntity2 = dataEntity;
            this.b = dataEntity2;
            h.u0(dataEntity2.getImage(), this.ivImg);
            this.tvTitle.setText(dataEntity2.getName());
            TextView textView = this.tvTotal;
            textView.setText(dataEntity2.getTotal() + e.a("09rJg+L03LfM"));
            this.tvDesc.setText(dataEntity2.getDesc());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1717c;

        /* compiled from: ChanelAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1718c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1718c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1718c;
                ChanelActivity.u(holder.a.a, holder.b.getName(), String.valueOf(holder.b.getId()));
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivImg = (ImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvTotal = (TextView) c.c(view, R.id.tv_total, e.a("UQsGCA9THkcFMlsTGQZE"), TextView.class);
            holder.tvDesc = (TextView) c.c(view, R.id.tv_desc, e.a("UQsGCA9THkcFIlEUG00="), TextView.class);
            View b = c.b(view, R.id.card_view, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f1717c = b;
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
                holder.tvTotal = null;
                holder.tvDesc = null;
                this.f1717c.setOnClickListener(null);
                this.f1717c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ChanelAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_md_chanel, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
