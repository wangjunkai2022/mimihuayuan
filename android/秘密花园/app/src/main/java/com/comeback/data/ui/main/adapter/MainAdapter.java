package com.comeback.data.ui.main.adapter;

import android.content.Context;
import android.text.TextUtils;
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
import com.comeback.data.ui.main.bean.HomeBean;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import f.d.a.c;
import f.d.a.s.e;
import f.e.a.i.c.d;

/* loaded from: classes.dex */
public class MainAdapter extends BaseAbstractAdapter<HomeBean> {

    /* renamed from: d  reason: collision with root package name */
    public a f1504d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<HomeBean> {
        public HomeBean a;
        public MainAdapter b;
        @BindView
        public RatioImageView ivHead;
        @BindView
        public TextView tvTitle;

        public Holder(View view, MainAdapter mainAdapter) {
            super(view);
            this.b = mainAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(HomeBean homeBean) {
            HomeBean homeBean2 = homeBean;
            this.a = homeBean2;
            if (!TextUtils.isEmpty(homeBean2.getIconUrl())) {
                h.u0(homeBean2.getIconUrl(), this.ivHead);
            } else if (homeBean2.getTask() == null) {
                this.ivHead.setImageResource(homeBean2.getRes());
            } else {
                c.d(this.b.a).n(Integer.valueOf(homeBean2.getRes())).a(e.B(new d())).G(this.ivHead);
            }
            this.tvTitle.setText(homeBean2.getName());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1505c;

        /* compiled from: MainAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1506c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1506c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1506c;
                a aVar = holder.b.f1504d;
                if (aVar != null) {
                    aVar.a(holder.a);
                }
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivHead = (RatioImageView) d.c.c.c(view, R.id.iv_head, f.e.a.e.a("UQsGCA9THloFLlEGHE0="), RatioImageView.class);
            holder.tvTitle = (TextView) d.c.c.c(view, R.id.tv_title, f.e.a.e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            View b = d.c.c.b(view, R.id.ll_root, f.e.a.e.a("WgcXDAQXGRQDClUeXw=="));
            this.f1505c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivHead = null;
                holder.tvTitle = null;
                this.f1505c.setOnClickListener(null);
                this.f1505c = null;
                return;
            }
            throw new IllegalStateException(f.e.a.e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public interface a {
        void a(HomeBean homeBean);
    }

    public MainAdapter(Context context) {
        super(context);
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder<Lcom/comeback/data/ui/main/bean/HomeBean;>; */
    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_home_main, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
