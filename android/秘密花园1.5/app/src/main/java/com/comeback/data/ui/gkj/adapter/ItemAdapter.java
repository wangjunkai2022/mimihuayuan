package com.comeback.data.ui.gkj.adapter;

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
import com.comeback.data.ui.gkj.ComicDetailActivity;
import com.comeback.data.ui.gkj.bean.ViewModel;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ItemAdapter extends BaseAbstractAdapter<ViewModel.DataBean.MComicDataBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ViewModel.DataBean.MComicDataBean> {
        public ItemAdapter a;
        public ViewModel.DataBean.MComicDataBean b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvPraise;
        @BindView
        public TextView tvTitle;

        public Holder(View view, ItemAdapter itemAdapter) {
            super(view);
            this.a = itemAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ViewModel.DataBean.MComicDataBean mComicDataBean) {
            ViewModel.DataBean.MComicDataBean mComicDataBean2 = mComicDataBean;
            this.b = mComicDataBean2;
            this.tvTitle.setText(mComicDataBean2.getTitle());
            TextView textView = this.tvPraise;
            textView.setText(e.a("0ufS") + mComicDataBean2.getResource_total() + e.a("383+"));
            h.D0(mComicDataBean2.getCover_url(), this.ivCover, 20);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1013c;

        /* compiled from: ItemAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1014c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1014c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Context context = this.f1014c.a.a;
                ComicDetailActivity.n();
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvPraise = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFNkYGERkGTA=="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f1013c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivCover = null;
                holder.tvTitle = null;
                holder.tvPraise = null;
                this.f1013c.setOnClickListener(null);
                this.f1013c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ItemAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_gkj_item, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
