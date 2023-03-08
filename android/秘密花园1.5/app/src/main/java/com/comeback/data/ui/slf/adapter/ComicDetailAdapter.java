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
import com.comeback.data.ui.slf.ComicDetailActivity;
import com.comeback.data.ui.slf.ComicReadActivity;
import com.comeback.data.ui.slf.bean.ChapterBean;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import f.e.a.k.g;
import g.a.x;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ComicDetailAdapter extends BaseAbstractAdapter<ChapterBean> {

    /* renamed from: d  reason: collision with root package name */
    public a f2054d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ChapterBean> {
        public ComicDetailAdapter a;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvTime;
        @BindView
        public TextView tvTitle;

        public Holder(View view, ComicDetailAdapter comicDetailAdapter) {
            super(view);
            this.a = comicDetailAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ChapterBean chapterBean) {
            ChapterBean chapterBean2 = chapterBean;
            h.N0(chapterBean2.getImg(), this.ivCover, 0);
            this.tvTitle.setText(chapterBean2.getLabel());
            this.tvTime.setText(String.valueOf(chapterBean2.getPoint()));
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f2055c;

        /* compiled from: ComicDetailAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f2056c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f2056c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f2056c;
                if (holder != null) {
                    a aVar = holder.a.f2054d;
                    if (aVar != null) {
                        ComicDetailActivity comicDetailActivity = (ComicDetailActivity) aVar;
                        ComicReadActivity.q(comicDetailActivity, (ArrayList) comicDetailActivity.f1994e.b, holder.getAdapterPosition(), comicDetailActivity.b.getId());
                        if (g.d(x.P()).f(SLFItemBean.class, e.a("XgY="), comicDetailActivity.b.getId()).size() != 0) {
                            g.d(comicDetailActivity.b.getRealm()).a(comicDetailActivity.b);
                            return;
                        }
                        return;
                    }
                    return;
                }
                throw null;
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvTime = (TextView) c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
            View b = c.b(view, R.id.rl_root, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVBlSHQIUCh0eCwRTQkQTCgdaW1Q="));
            this.f2055c = b;
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
                holder.tvTime = null;
                this.f2055c.setOnClickListener(null);
                this.f2055c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public interface a {
    }

    public ComicDetailAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_gkj_comic, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
