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
public class ColumnList2Adapter extends BaseAbstractAdapter<Column.DataBean.SubclassBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Column.DataBean.SubclassBean> {
        public ColumnList2Adapter a;
        public Column.DataBean.SubclassBean b;
        @BindView
        public RatioImageView ivCover;
        @BindView
        public TextView tvName;

        public Holder(View view, ColumnList2Adapter columnList2Adapter) {
            super(view);
            this.a = columnList2Adapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Column.DataBean.SubclassBean subclassBean) {
            Column.DataBean.SubclassBean subclassBean2 = subclassBean;
            this.b = subclassBean2;
            this.itemView.setPadding(6, 6, 6, 6);
            h.u0(subclassBean2.getNavImage(), this.ivCover);
            this.tvName.setText(subclassBean2.getNavName());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f444c;

        /* compiled from: ColumnList2Adapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f445c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f445c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f445c;
                ColumnDetailActivity.v(holder.a.a, holder.b.getNavId(), holder.b.getNavCls());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivCover = (RatioImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), RatioImageView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            View b = c.b(view, R.id.fl_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f444c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivCover = null;
                holder.tvName = null;
                this.f444c.setOnClickListener(null);
                this.f444c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ColumnList2Adapter(Context context) {
        super(context);
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder<Lcom/comeback/data/ui/cucumber/bean/Column$DataBean$SubclassBean;>; */
    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_cucumber_column2, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
