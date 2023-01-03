package com.comeback.data.ui.fengliu;

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
import com.comeback.data.ui.fengliu.bean.MMInfo;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class RecommnedAdapter extends BaseAbstractAdapter<MMInfo> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<MMInfo> {
        public MMInfo a;
        public RecommnedAdapter b;
        @BindView
        public TextView tvName;

        public Holder(View view, RecommnedAdapter recommnedAdapter) {
            super(view);
            this.b = recommnedAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(MMInfo mMInfo) {
            MMInfo mMInfo2 = mMInfo;
            this.a = mMInfo2;
            String cityCodeReadable = mMInfo2.getCityCodeReadable();
            if (cityCodeReadable.contains(e.a("Gg=="))) {
                cityCodeReadable = cityCodeReadable.split(e.a("Gg=="))[1];
            }
            TextView textView = this.tvName;
            textView.setText(e.a("bA==") + cityCodeReadable + e.a("ag==") + mMInfo2.getTitle());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f689c;

        /* compiled from: RecommnedAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f690c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f690c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f690c;
                InfoActivity.m(holder.b.a, String.valueOf(holder.a.getId()));
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU1DClkGQwkOB1FcF0YTEBkeAAMQ"));
            holder.tvName = (TextView) c.a(b, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            this.f689c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvName = null;
                this.f689c.setOnClickListener(null);
                this.f689c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_fengliu_recommend, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
