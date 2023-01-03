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
import com.comeback.data.ui.cucumber.ActorDetailActivity;
import com.comeback.data.ui.cucumber.bean.Actor;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class RankActorAdapter extends BaseAbstractAdapter<Actor> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Actor> {
        public RankActorAdapter a;
        public Actor b;
        @BindView
        public RatioImageView ivHead;
        @BindView
        public TextView tvCount;
        @BindView
        public TextView tvName;
        @BindView
        public TextView tvScore;

        public Holder(View view, RankActorAdapter rankActorAdapter) {
            super(view);
            this.a = rankActorAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Actor actor) {
            Actor actor2 = actor;
            this.b = actor2;
            h.u0(actor2.getPhotoUrl(), this.ivHead);
            this.tvName.setText(actor2.getNameCn());
            TextView textView = this.tvScore;
            textView.setText(e.a("0ezLjObj37/0gKHXQg==") + actor2.getStarLevel() + e.a("0fr8"));
            TextView textView2 = this.tvCount;
            textView2.setText(actor2.getVideosCount() + e.a("3uHLgdbC3rr0"));
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f448c;

        /* compiled from: RankActorAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f449c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f449c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f449c;
                ActorDetailActivity.l(holder.a.a, holder.b.getId());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivHead = (RatioImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), RatioImageView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvScore = (TextView) c.c(view, R.id.tv_score, e.a("UQsGCA9THkcFNVcICg9E"), TextView.class);
            holder.tvCount = (TextView) c.c(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f448c = b;
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
                holder.tvScore = null;
                holder.tvCount = null;
                this.f448c.setOnClickListener(null);
                this.f448c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public RankActorAdapter(Context context) {
        super(context);
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder<Lcom/comeback/data/ui/cucumber/bean/Actor;>; */
    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_cucumber_rank_actor, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
