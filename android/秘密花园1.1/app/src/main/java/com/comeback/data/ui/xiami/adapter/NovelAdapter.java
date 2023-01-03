package com.comeback.data.ui.xiami.adapter;

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
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.xiami.NovelReadActivity;
import com.comeback.data.ui.xiami.bean.NovelList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class NovelAdapter extends BaseAbstractAdapter<NovelList.DataBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<NovelList.DataBean> {
        public NovelAdapter a;
        public NovelList.DataBean b;
        @BindView
        public TextView tvTag;
        @BindView
        public TextView tvTitle;
        @BindView
        public TextView tvView;

        public Holder(View view, NovelAdapter novelAdapter) {
            super(view);
            this.a = novelAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(NovelList.DataBean dataBean) {
            NovelList.DataBean dataBean2 = dataBean;
            this.b = dataBean2;
            this.tvTitle.setText(dataBean2.getTitle());
            this.tvView.setText(dataBean2.getViews());
            this.tvTag.setText(dataBean2.getCategoryTitle());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f2155c;

        /* compiled from: NovelAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f2156c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f2156c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f2156c;
                NovelReadActivity.l(holder.a.a, holder.b);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvView = (TextView) c.c(view, R.id.tv_view, e.a("UQsGCA9THkcFMF0CD00="), TextView.class);
            holder.tvTag = (TextView) c.c(view, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAXw=="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f2155c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                holder.tvView = null;
                holder.tvTag = null;
                this.f2155c.setOnClickListener(null);
                this.f2155c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public NovelAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_xm_novel, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
