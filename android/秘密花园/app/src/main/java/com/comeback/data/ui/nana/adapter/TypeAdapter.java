package com.comeback.data.ui.nana.adapter;

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
import com.comeback.data.ui.nana.TypeDetailActivity;
import com.comeback.data.ui.nana.bean.TypeBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class TypeAdapter extends BaseAbstractAdapter<TypeBean.ResponseEntity.CategoriesEntity> {

    /* renamed from: d  reason: collision with root package name */
    public String f1779d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<TypeBean.ResponseEntity.CategoriesEntity> {
        public TypeAdapter a;
        public TypeBean.ResponseEntity.CategoriesEntity b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvTitle;

        public Holder(View view, TypeAdapter typeAdapter) {
            super(view);
            this.a = typeAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(TypeBean.ResponseEntity.CategoriesEntity categoriesEntity) {
            TypeBean.ResponseEntity.CategoriesEntity categoriesEntity2 = categoriesEntity;
            this.b = categoriesEntity2;
            this.tvTitle.setText(categoriesEntity2.getCategory_name());
            h.x0(categoriesEntity2.getCategory_image(), this.ivCover);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1780c;

        /* compiled from: TypeAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1781c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1781c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1781c;
                TypeDetailActivity.n(holder.a.a, String.valueOf(holder.b.getCategory_id()), holder.a.f1779d);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f1780c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                holder.ivCover = null;
                this.f1780c.setOnClickListener(null);
                this.f1780c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public TypeAdapter(Context context, String str) {
        super(context);
        this.f1779d = str;
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_nana_type, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
