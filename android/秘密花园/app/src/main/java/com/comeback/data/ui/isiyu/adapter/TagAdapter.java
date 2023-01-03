package com.comeback.data.ui.isiyu.adapter;

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
import com.comeback.data.ui.isiyu.SearchActivity;
import com.comeback.data.ui.isiyu.bean.SearchTag;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import f.e.a.j.t.d;

/* loaded from: classes.dex */
public class TagAdapter extends BaseAbstractAdapter<SearchTag> {

    /* renamed from: d  reason: collision with root package name */
    public a f1183d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<SearchTag> {
        public TagAdapter a;
        public SearchTag b;
        @BindView
        public TextView tvTag;

        public Holder(View view, TagAdapter tagAdapter) {
            super(view);
            this.a = tagAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(SearchTag searchTag) {
            SearchTag searchTag2 = searchTag;
            this.b = searchTag2;
            this.tvTag.setText(searchTag2.getKey());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1184c;

        /* compiled from: TagAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1185c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1185c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1185c;
                a aVar = holder.a.f1183d;
                d dVar = (d) aVar;
                SearchActivity.this.etSearch.setText(holder.b.getKey());
                SearchActivity.this.refreshLayout.h();
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAX0oCBVNCDgEfG1ZXU0FDBgwJC0w="));
            holder.tvTag = (TextView) c.a(b, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAXw=="), TextView.class);
            this.f1184c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTag = null;
                this.f1184c.setOnClickListener(null);
                this.f1184c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public interface a {
    }

    public TagAdapter(Context context, a aVar) {
        super(context);
        this.f1183d = aVar;
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_isiyu_tag, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
