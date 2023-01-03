package com.comeback.data.ui.iqiyi.adapter;

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
import com.comeback.data.ui.iqiyi.CategoryActivity;
import com.comeback.data.ui.iqiyi.bean.Category;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class CategoryAdapter extends BaseAbstractAdapter<Category> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Category> {
        public CategoryAdapter a;
        public Category b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvTag;
        @BindView
        public TextView tvTitle;

        public Holder(View view, CategoryAdapter categoryAdapter) {
            super(view);
            this.a = categoryAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Category category) {
            Category category2 = category;
            this.b = category2;
            this.tvTitle.setText(category2.getName());
            h.k1(this.tvTag, category2.getVipLevel());
            h.F0(category2.getImg(), this.ivCover, 20);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1139c;

        /* compiled from: CategoryAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1140c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1140c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1140c;
                CategoryActivity.n(holder.a.a, holder.b.getCateId(), holder.b.getName());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhES1YMB0QGFk1bHAIUQBcENQJSFSAIAhBSVhdB"));
            holder.ivCover = (ImageView) c.a(b, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            this.f1139c = b;
            b.setOnClickListener(new a(this, holder));
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvTag = (TextView) c.c(view, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAXw=="), TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivCover = null;
                holder.tvTitle = null;
                holder.tvTag = null;
                this.f1139c.setOnClickListener(null);
                this.f1139c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public CategoryAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_iqiyi_category, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
