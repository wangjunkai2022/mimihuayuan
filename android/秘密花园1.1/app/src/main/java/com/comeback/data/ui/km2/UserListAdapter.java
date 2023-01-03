package com.comeback.data.ui.km2;

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
import com.comeback.data.ui.km2.bean.Km2User;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class UserListAdapter extends BaseAbstractAdapter<Km2User> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Km2User> {
        public UserListAdapter a;
        public Km2User b;
        @BindView
        public TextView tvName;

        public Holder(View view, UserListAdapter userListAdapter) {
            super(view);
            this.a = userListAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Km2User km2User) {
            Km2User km2User2 = km2User;
            this.b = km2User2;
            this.tvName.setText(km2User2.getMu_name());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1354c;

        /* compiled from: UserListAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1355c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1355c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1355c;
                UserCenterActivity.u(holder.a.a, holder.b.getMu_name(), holder.b.getMu_id());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
            this.f1354c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvName = null;
                this.f1354c.setOnClickListener(null);
                this.f1354c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public UserListAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_km_user, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
