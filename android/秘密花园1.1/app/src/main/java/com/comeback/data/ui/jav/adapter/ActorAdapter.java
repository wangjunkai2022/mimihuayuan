package com.comeback.data.ui.jav.adapter;

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
import com.comeback.data.ui.jav.ActorDetailActivity;
import com.comeback.data.ui.jav.bean.Actor;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ActorAdapter extends BaseAbstractAdapter<Actor> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Actor> {
        public ActorAdapter a;
        public Actor b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvTitle;

        public Holder(View view, ActorAdapter actorAdapter) {
            super(view);
            this.a = actorAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Actor actor) {
            Actor actor2 = actor;
            this.b = actor2;
            this.tvTitle.setText(actor2.getName());
            h.u0(actor2.getImg(), this.ivCover);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1214c;

        /* compiled from: ActorAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1215c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1215c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1215c;
                ActorDetailActivity.t(holder.a.a, holder.ivCover, holder.b.getImg(), holder.b.getUrl());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f1214c = b;
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
                this.f1214c.setOnClickListener(null);
                this.f1214c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ActorAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_jav_actor, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
