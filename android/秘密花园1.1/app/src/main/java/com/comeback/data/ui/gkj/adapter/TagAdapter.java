package com.comeback.data.ui.gkj.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindColor;
import butterknife.BindView;
import butterknife.Unbinder;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.gkj.bean.ScreenBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class TagAdapter extends BaseAbstractAdapter<ScreenBean.TypeBean> {

    /* renamed from: d  reason: collision with root package name */
    public int f968d;

    /* renamed from: e  reason: collision with root package name */
    public a f969e;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ScreenBean.TypeBean> {
        public TagAdapter a;
        @BindColor
        public int thirdText;
        @BindView
        public TextView tvTag;

        public Holder(View view, TagAdapter tagAdapter) {
            super(view);
            this.a = tagAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ScreenBean.TypeBean typeBean) {
            this.tvTag.setText(typeBean.getName());
            TextView textView = this.tvTag;
            int adapterPosition = getAdapterPosition();
            TagAdapter tagAdapter = this.a;
            textView.setBackground(adapterPosition == tagAdapter.f968d ? tagAdapter.a.getDrawable(R.drawable.bg_radius_red_stroke) : null);
            this.tvTag.setTextColor(getAdapterPosition() == this.a.f968d ? Color.parseColor(e.a("FAQFUF9HDQ==")) : this.thirdText);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f970c;

        /* compiled from: TagAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f971c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f971c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f971c;
                int adapterPosition = holder.getAdapterPosition();
                TagAdapter tagAdapter = holder.a;
                int i2 = tagAdapter.f968d;
                tagAdapter.f968d = adapterPosition;
                tagAdapter.notifyItemChanged(i2);
                holder.a.notifyItemChanged(adapterPosition);
                holder.a.f969e.a(adapterPosition);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAX0oCBVNCDgEfG1ZXU0FDBgwJC0w="));
            holder.tvTag = (TextView) c.a(b, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAXw=="), TextView.class);
            this.f970c = b;
            b.setOnClickListener(new a(this, holder));
            holder.thirdText = ContextCompat.getColor(view.getContext(), R.color.basic_third_text);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTag = null;
                this.f970c.setOnClickListener(null);
                this.f970c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public interface a {
        void a(int i2);
    }

    public TagAdapter(Context context, a aVar) {
        super(context);
        this.f968d = 0;
        this.f969e = aVar;
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_gkj_tag, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
