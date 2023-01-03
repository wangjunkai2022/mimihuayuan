package com.comeback.data.ui.cucumber.adapter;

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
import com.comeback.data.ui.cucumber.ColumnDetailActivity;
import com.comeback.data.ui.cucumber.bean.Column;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ColumnListAdapter extends BaseAbstractAdapter<Column.DataBean.SubclassBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Column.DataBean.SubclassBean> {
        public ColumnListAdapter a;
        public Column.DataBean.SubclassBean b;
        @BindView
        public RatioImageView ivHead;
        @BindView
        public TextView tvIntro;
        @BindView
        public TextView tvName;
        @BindView
        public TextView tvTime;

        public Holder(View view, ColumnListAdapter columnListAdapter) {
            super(view);
            this.a = columnListAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Column.DataBean.SubclassBean subclassBean) {
            Column.DataBean.SubclassBean subclassBean2 = subclassBean;
            this.b = subclassBean2;
            h.u0(subclassBean2.getNavImage(), this.ivHead);
            this.tvName.setText(subclassBean2.getNavName());
            TextView textView = this.tvTime;
            textView.setText(e.a("0fnXgv3D36TFj6PTQg==") + subclassBean2.getLastUpdateTime());
            this.tvIntro.setText(subclassBean2.getIntro());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f446c;

        /* compiled from: ColumnListAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f447c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f447c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f447c;
                ColumnDetailActivity.v(holder.a.a, holder.b.getNavId(), holder.b.getNavCls());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivHead = (RatioImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), RatioImageView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvTime = (TextView) c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
            holder.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
            View b = c.b(view, R.id.rl_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f446c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivHead = null;
                holder.tvName = null;
                holder.tvTime = null;
                holder.tvIntro = null;
                this.f446c.setOnClickListener(null);
                this.f446c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ColumnListAdapter(Context context) {
        super(context);
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder<Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;>; */
    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_cucumber_column, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
