package com.comeback.data.ui.gkj.adapter;

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
import com.comeback.data.ui.gkj.CgReadActivity;
import com.comeback.data.ui.gkj.ComicDetailActivity;
import com.comeback.data.ui.gkj.bean.ComicList;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ScreenAdapter extends BaseAbstractAdapter<ComicList.ListsBean.DataBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ComicList.ListsBean.DataBean> {
        public ScreenAdapter a;
        public ComicList.ListsBean.DataBean b;
        @BindView
        public RatioImageView ivCover;
        @BindView
        public TextView tvIntro;
        @BindView
        public TextView tvTitle;

        public Holder(View view, ScreenAdapter screenAdapter) {
            super(view);
            this.a = screenAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ComicList.ListsBean.DataBean dataBean) {
            ComicList.ListsBean.DataBean dataBean2 = dataBean;
            this.b = dataBean2;
            h.D0(dataBean2.getCover_url(), this.ivCover, 20);
            this.tvTitle.setText(dataBean2.getTitle());
            this.tvIntro.setText(dataBean2.getIntro());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1031c;

        /* compiled from: ScreenAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1032c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1032c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1032c;
                if (!holder.b.getGlobal_type().equals(e.a("VAU=")) && !holder.b.getGlobal_type().equals(e.a("VA0QFAcSQA=="))) {
                    Context context = holder.a.a;
                    ComicDetailActivity.n();
                    return;
                }
                CgReadActivity.l(holder.a.a, holder.b);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivCover = (RatioImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), RatioImageView.class);
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
            this.f1031c = b;
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
                holder.tvIntro = null;
                this.f1031c.setOnClickListener(null);
                this.f1031c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ScreenAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_gkj_screen, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
