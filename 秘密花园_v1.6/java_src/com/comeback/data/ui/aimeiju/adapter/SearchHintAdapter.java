package com.comeback.data.ui.aimeiju.adapter;

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
import com.comeback.data.ui.aimeiju.bean.ListBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class SearchHintAdapter extends BaseAbstractAdapter<ListBean.DataBean.VodBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ListBean.DataBean.VodBean> {
        public ListBean.DataBean.VodBean a;
        @BindView
        public TextView tvCount;
        @BindView
        public TextView tvTitle;

        public Holder(View view, SearchHintAdapter searchHintAdapter) {
            super(view);
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ListBean.DataBean.VodBean vodBean) {
            ListBean.DataBean.VodBean vodBean2 = vodBean;
            this.a = vodBean2;
            this.tvTitle.setText(vodBean2.getName());
            TextView textView = this.tvCount;
            textView.setText((getAdapterPosition() + 1) + e.a("GQ=="));
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f149c;

        /* compiled from: SearchHintAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f150c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f150c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                h.p1(this.f150c.a.getId());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvCount = (TextView) c.c(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f149c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                holder.tvCount = null;
                this.f149c.setOnClickListener(null);
                this.f149c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public SearchHintAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_aimeiju_hint, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
