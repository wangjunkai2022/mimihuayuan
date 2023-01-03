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
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import d.c.b;
import d.c.c;
import f.e.a.e;
import f.e.a.j.m.m;
import java.util.List;

/* loaded from: classes.dex */
public class Tag2Adapter extends BaseAbstractAdapter<ScreenBean.TypeBean.ChildrenBean> {

    /* renamed from: d  reason: collision with root package name */
    public int f960d;

    /* renamed from: e  reason: collision with root package name */
    public a f961e;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ScreenBean.TypeBean.ChildrenBean> {
        public Tag2Adapter a;
        @BindColor
        public int thirdText;
        @BindView
        public TextView tvTag;

        public Holder(View view, Tag2Adapter tag2Adapter) {
            super(view);
            this.a = tag2Adapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ScreenBean.TypeBean.ChildrenBean childrenBean) {
            this.tvTag.setText(childrenBean.getTitle());
            TextView textView = this.tvTag;
            int adapterPosition = getAdapterPosition();
            Tag2Adapter tag2Adapter = this.a;
            textView.setBackground(adapterPosition == tag2Adapter.f960d ? tag2Adapter.a.getDrawable(R.drawable.bg_radius_red_stroke) : null);
            this.tvTag.setTextColor(getAdapterPosition() == this.a.f960d ? Color.parseColor(e.a("FAQFUF9HDQ==")) : this.thirdText);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f962c;

        /* compiled from: Tag2Adapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f963c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f963c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                SmartRefreshLayout smartRefreshLayout;
                Holder holder = this.f963c;
                int adapterPosition = holder.getAdapterPosition();
                Tag2Adapter tag2Adapter = holder.a;
                int i2 = tag2Adapter.f960d;
                tag2Adapter.f960d = adapterPosition;
                tag2Adapter.notifyItemChanged(i2);
                holder.a.notifyItemChanged(adapterPosition);
                smartRefreshLayout = ((m) holder.a.f961e).a.refreshLayout;
                smartRefreshLayout.h();
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAX0oCBVNCDgEfG1ZXU0FDBgwJC0w="));
            holder.tvTag = (TextView) c.a(b, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAXw=="), TextView.class);
            this.f962c = b;
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
                this.f962c.setOnClickListener(null);
                this.f962c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public interface a {
    }

    public Tag2Adapter(Context context, a aVar) {
        super(context);
        this.f960d = 0;
        this.f961e = aVar;
    }

    @Override // com.comeback.data.base.BaseAbstractAdapter
    public void a(List<ScreenBean.TypeBean.ChildrenBean> list) {
        this.f960d = 0;
        b(list, this.b.size());
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
