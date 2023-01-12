package com.comeback.data.ui.main.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.commom.CachePlayActivity;
import com.comeback.data.ui.main.DownloadActivity;
import com.comeback.data.ui.main.bean.CollectVideo;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.k.g;
import java.text.SimpleDateFormat;

/* loaded from: classes.dex */
public class CollectAdapter extends BaseAbstractAdapter<CollectVideo> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<CollectVideo> {
        public CollectVideo a;
        public CollectAdapter b;
        @BindView
        public TextView tvName;
        @BindView
        public TextView tvTime;

        public Holder(View view, CollectAdapter collectAdapter) {
            super(view);
            this.b = collectAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(CollectVideo collectVideo) {
            CollectVideo collectVideo2 = collectVideo;
            this.a = collectVideo2;
            this.tvName.setText(collectVideo2.getName());
            this.tvTime.setText(new SimpleDateFormat(e.a("ThsaHUQ+dBwXAhQvMFAOBg0REA==")).format(Long.valueOf(collectVideo2.getAddTime())));
        }

        @OnClick
        public void onViewClicked(View view) {
            switch (view.getId()) {
                case R.id.iv_delete /* 2131296506 */:
                    g.d(this.a.getRealm()).c(CollectVideo.class, getAdapterPosition());
                    CollectAdapter collectAdapter = this.b;
                    int adapterPosition = getAdapterPosition();
                    if (collectAdapter != null) {
                        if (adapterPosition < 0 || adapterPosition >= collectAdapter.b.size()) {
                            return;
                        }
                        collectAdapter.b.remove(adapterPosition);
                        collectAdapter.notifyItemRemoved(adapterPosition);
                        return;
                    }
                    throw null;
                case R.id.iv_down /* 2131296507 */:
                    DownloadActivity.r(this.b.a, this.a.getName(), this.a.getUrl());
                    return;
                case R.id.ll_root /* 2131296572 */:
                    CachePlayActivity.l(this.b.a, this.a.getUrl(), this.a.getName());
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1568c;

        /* renamed from: d  reason: collision with root package name */
        public View f1569d;

        /* renamed from: e  reason: collision with root package name */
        public View f1570e;

        /* compiled from: CollectAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1571c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1571c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1571c.onViewClicked(view);
            }
        }

        /* compiled from: CollectAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class b extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1572c;

            public b(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1572c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1572c.onViewClicked(view);
            }
        }

        /* compiled from: CollectAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class c extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1573c;

            public c(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1573c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1573c.onViewClicked(view);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvName = (TextView) d.c.c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvTime = (TextView) d.c.c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
            View b2 = d.c.c.b(view, R.id.iv_down, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
            this.f1568c = b2;
            b2.setOnClickListener(new a(this, holder));
            View b3 = d.c.c.b(view, R.id.iv_delete, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
            this.f1569d = b3;
            b3.setOnClickListener(new b(this, holder));
            View b4 = d.c.c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
            this.f1570e = b4;
            b4.setOnClickListener(new c(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvName = null;
                holder.tvTime = null;
                this.f1568c.setOnClickListener(null);
                this.f1568c = null;
                this.f1569d.setOnClickListener(null);
                this.f1569d = null;
                this.f1570e.setOnClickListener(null);
                this.f1570e = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public CollectAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_main_collecy, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
