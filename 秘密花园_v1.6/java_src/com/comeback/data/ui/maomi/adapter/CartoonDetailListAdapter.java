package com.comeback.data.ui.maomi.adapter;

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
import com.comeback.data.ui.maomi.CartoonWatchActivity;
import com.comeback.data.ui.maomi.bean.CartoonDetail;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class CartoonDetailListAdapter extends BaseAbstractAdapter<CartoonDetail.DataBeanX.DataBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<CartoonDetail.DataBeanX.DataBean> {
        public CartoonDetailListAdapter a;
        public CartoonDetail.DataBeanX.DataBean b;
        @BindView
        public RatioImageView mIvImg;
        @BindView
        public TextView mTvName;
        @BindView
        public TextView mTvPlayCount;
        @BindView
        public TextView mTvPraiseCount;

        public Holder(View view, CartoonDetailListAdapter cartoonDetailListAdapter) {
            super(view);
            this.a = cartoonDetailListAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(CartoonDetail.DataBeanX.DataBean dataBean) {
            CartoonDetail.DataBeanX.DataBean dataBean2 = dataBean;
            this.b = dataBean2;
            h.N0(dataBean2.getImage(), this.mIvImg, 4);
            this.mTvName.setText(dataBean2.getName());
            this.mTvPlayCount.setText(dataBean2.getBrowses());
            this.mTvPraiseCount.setText(dataBean2.getPraises());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1666c;

        /* compiled from: CartoonDetailListAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1667c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1667c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1667c;
                CartoonWatchActivity.l(holder.a.a, holder.b.getId());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.mIvImg = (RatioImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THl46EH0KH00="), RatioImageView.class);
            holder.mTvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THl4nEHoGFQ9E"), TextView.class);
            holder.mTvPlayCount = (TextView) c.c(view, R.id.tv_play_count, e.a("UQsGCA9THl4nEGQLGRMgBEIMF0M="), TextView.class);
            holder.mTvPraiseCount = (TextView) c.c(view, R.id.tv_praise_count, e.a("UQsGCA9THl4nEGQVGQMQDnQNFgofVA=="), TextView.class);
            View b = c.b(view, R.id.rl_root, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
            this.f1666c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.mIvImg = null;
                holder.mTvName = null;
                holder.mTvPlayCount = null;
                holder.mTvPraiseCount = null;
                this.f1666c.setOnClickListener(null);
                this.f1666c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public CartoonDetailListAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_mm_cartoon_list, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
