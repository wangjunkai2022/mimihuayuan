package com.comeback.data.ui.bale.adapter;

import android.content.Context;
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
import com.comeback.data.ui.bale.bean.Tags;
import com.comeback.secret.garden.R;
import d.c.b;
import f.e.a.e;
import f.e.a.j.d.d.c;
import java.util.List;

/* loaded from: classes.dex */
public class TagTypeAdapter extends BaseAbstractAdapter<Tags.ResultBean.TagsBean> {

    /* renamed from: d  reason: collision with root package name */
    public a f283d;

    /* renamed from: e  reason: collision with root package name */
    public int f284e;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Tags.ResultBean.TagsBean> {
        public TagTypeAdapter a;
        public Tags.ResultBean.TagsBean b;
        @BindColor
        public int normalColor;
        @BindColor
        public int selectColor;
        @BindView
        public TextView tvTag;

        public Holder(View view, TagTypeAdapter tagTypeAdapter) {
            super(view);
            this.a = tagTypeAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Tags.ResultBean.TagsBean tagsBean) {
            Tags.ResultBean.TagsBean tagsBean2 = tagsBean;
            this.b = tagsBean2;
            this.tvTag.setText(tagsBean2.getName());
            int adapterPosition = getAdapterPosition();
            this.tvTag.setTextColor(adapterPosition == this.a.f284e ? this.selectColor : this.normalColor);
            this.tvTag.setBackgroundResource(adapterPosition == this.a.f284e ? R.drawable.bg_radius_grey_stoke : R.drawable.bg_radius_trans_white_deep);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f285c;

        /* compiled from: TagTypeAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f286c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f286c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f286c;
                int adapterPosition = holder.getAdapterPosition();
                TagTypeAdapter tagTypeAdapter = holder.a;
                if (adapterPosition == tagTypeAdapter.f284e) {
                    return;
                }
                a aVar = tagTypeAdapter.f283d;
                List<Tags.ResultBean.TagsBean.ListBean> list = holder.b.getList();
                c cVar = (c) aVar;
                cVar.a.c();
                TagAdapter tagAdapter = cVar.a;
                tagAdapter.b(list, tagAdapter.b.size());
                TagTypeAdapter tagTypeAdapter2 = holder.a;
                int i2 = tagTypeAdapter2.f284e;
                tagTypeAdapter2.f284e = adapterPosition;
                tagTypeAdapter2.notifyItemChanged(i2);
                TagTypeAdapter tagTypeAdapter3 = holder.a;
                tagTypeAdapter3.notifyItemChanged(tagTypeAdapter3.f284e);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = d.c.c.b(view, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAX0oCBVNCDgEfG1ZXU0FDBgwJC0w="));
            holder.tvTag = (TextView) d.c.c.a(b, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAXw=="), TextView.class);
            this.f285c = b;
            b.setOnClickListener(new a(this, holder));
            Context context = view.getContext();
            holder.selectColor = ContextCompat.getColor(context, R.color.hgColorAccent);
            holder.normalColor = ContextCompat.getColor(context, R.color.basic_third_text);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTag = null;
                this.f285c.setOnClickListener(null);
                this.f285c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public interface a {
    }

    public TagTypeAdapter(Context context, a aVar) {
        super(context);
        this.f284e = 0;
        this.f283d = aVar;
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_bale_tag_type, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
