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
import com.comeback.data.ui.cucumber.CucumberShortListActivity;
import com.comeback.data.ui.cucumber.bean.Video;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ShortGirdAdapter extends BaseAbstractAdapter<Video> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Video> {
        public ShortGirdAdapter a;
        @BindView
        public RatioImageView ivCover;
        @BindView
        public TextView tvName;

        public Holder(View view, ShortGirdAdapter shortGirdAdapter) {
            super(view);
            this.a = shortGirdAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Video video) {
            Video video2 = video;
            this.tvName.setText(video2.getMovName());
            h.u0(video2.getCover(), this.ivCover);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f454c;

        /* compiled from: ShortGirdAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f455c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f455c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f455c;
                ShortGirdAdapter shortGirdAdapter = holder.a;
                CucumberShortListActivity.r(shortGirdAdapter.a, (ArrayList) shortGirdAdapter.b, holder.getAdapterPosition());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivCover = (RatioImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), RatioImageView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f454c = b;
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
                this.f454c.setOnClickListener(null);
                this.f454c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ShortGirdAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_cucumber_short_gird, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
