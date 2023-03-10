package com.comeback.data.ui.slf.adapter;

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
import com.comeback.data.ui.slf.CatIdActivity;
import com.comeback.data.ui.slf.RankActivity;
import com.comeback.data.ui.slf.SpecialActivity;
import com.comeback.data.ui.slf.bean.CategoriesBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class CategoriesAdapter extends BaseAbstractAdapter<CategoriesBean> {

    /* renamed from: d  reason: collision with root package name */
    public String f2051d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<CategoriesBean> {
        public CategoriesBean a;
        public CategoriesAdapter b;
        @BindView
        public ImageView ivHead;
        @BindView
        public TextView tvName;

        public Holder(View view, CategoriesAdapter categoriesAdapter) {
            super(view);
            this.b = categoriesAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(CategoriesBean categoriesBean) {
            CategoriesBean categoriesBean2 = categoriesBean;
            this.a = categoriesBean2;
            h.P0(categoriesBean2.getImg(), this.ivHead, 0);
            this.tvName.setText(categoriesBean2.getName());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f2052c;

        /* compiled from: CategoriesAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f2053c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f2053c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                String str;
                Holder holder = this.f2053c;
                if (holder != null) {
                    try {
                        str = new JSONObject(holder.a.getFilter()).getString(e.a("VAMXLQ8="));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                        str = "";
                    }
                    String key = holder.a.getKey();
                    if (e.a("RQMNDw==").equals(key)) {
                        CategoriesAdapter categoriesAdapter = holder.b;
                        RankActivity.n(categoriesAdapter.a, categoriesAdapter.f2051d);
                        return;
                    } else if (e.a("RBIGBwISVQ==").equals(key)) {
                        CategoriesAdapter categoriesAdapter2 = holder.b;
                        SpecialActivity.t(categoriesAdapter2.a, categoriesAdapter2.f2051d);
                        return;
                    } else {
                        CatIdActivity.v(holder.b.a, str, holder.a.getName(), holder.b.f2051d);
                        return;
                    }
                }
                throw null;
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivHead = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFLlEGHE0="), ImageView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f2052c = b;
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
                this.f2052c.setOnClickListener(null);
                this.f2052c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public CategoriesAdapter(Context context, String str) {
        super(context);
        this.f2051d = str;
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_slf_categories, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
