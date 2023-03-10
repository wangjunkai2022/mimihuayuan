package com.comeback.data.ui.cucumber.adapter;

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
import com.comeback.data.ui.cucumber.ActorDetailActivity;
import com.comeback.data.ui.cucumber.bean.Actor;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class ActorAdapter extends BaseAbstractAdapter<Actor> {

    /* loaded from: classes.dex */
    public static class HomeListHolder extends BaseViewHolder<Actor> {
        public ActorAdapter a;
        public Actor b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvTitle;

        public HomeListHolder(View view, ActorAdapter actorAdapter) {
            super(view);
            this.a = actorAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Actor actor) {
            Actor actor2 = actor;
            this.b = actor2;
            h.u0(actor2.getPhotoUrl(), this.ivCover);
            this.tvTitle.setText(actor2.getNameCn());
        }
    }

    /* loaded from: classes.dex */
    public class HomeListHolder_ViewBinding implements Unbinder {
        public HomeListHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f438c;

        /* compiled from: ActorAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f439c;

            public a(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f439c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                HomeListHolder homeListHolder = this.f439c;
                ActorDetailActivity.l(homeListHolder.a.a, homeListHolder.b.getId());
            }
        }

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            homeListHolder.ivCover = (ImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            homeListHolder.tvTitle = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQDClUeXw=="));
            this.f438c = b;
            b.setOnClickListener(new a(this, homeListHolder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            HomeListHolder homeListHolder = this.b;
            if (homeListHolder != null) {
                this.b = null;
                homeListHolder.ivCover = null;
                homeListHolder.tvTitle = null;
                this.f438c.setOnClickListener(null);
                this.f438c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ActorAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new HomeListHolder(this.f107c.inflate(R.layout.item_cucumber_actor, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
