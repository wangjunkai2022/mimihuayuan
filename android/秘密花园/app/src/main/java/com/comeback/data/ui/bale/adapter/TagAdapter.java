package com.comeback.data.ui.bale.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
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
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.bale.bean.Tags;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class TagAdapter extends BaseAbstractAdapter<Tags.ResultBean.TagsBean.ListBean> {

    /* renamed from: e  reason: collision with root package name */
    public static SparseArray<String> f279e = new SparseArray<>();

    /* renamed from: d  reason: collision with root package name */
    public a f280d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Tags.ResultBean.TagsBean.ListBean> {
        public TagAdapter a;
        public Tags.ResultBean.TagsBean.ListBean b;
        @BindView
        public ImageView ivCheck;
        @BindView
        public TextView tvTag;

        public Holder(View view, TagAdapter tagAdapter) {
            super(view);
            this.a = tagAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Tags.ResultBean.TagsBean.ListBean listBean) {
            Tags.ResultBean.TagsBean.ListBean listBean2 = listBean;
            this.b = listBean2;
            this.tvTag.setText(listBean2.getTitle());
            this.ivCheck.setVisibility(TextUtils.isEmpty(TagAdapter.f279e.get(listBean2.getId())) ? 8 : 0);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f281c;

        /* compiled from: TagAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f282c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f282c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f282c;
                if (holder != null) {
                    if (TextUtils.isEmpty(TagAdapter.f279e.get(holder.b.getId()))) {
                        TagAdapter.f279e.put(holder.b.getId(), holder.b.getTitle());
                    } else {
                        TagAdapter.f279e.remove(holder.b.getId());
                    }
                    a aVar = holder.a.f280d;
                    int size = TagAdapter.f279e.size();
                    TextView textView = ((f.e.a.j.d.d.b) aVar).a.tvSelectCount;
                    textView.setText(e.a("0tXRg8bo0LP6gJTgn8fdSw==") + size);
                    holder.a.notifyItemChanged(holder.getAdapterPosition());
                    return;
                }
                throw null;
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAX0oCBVNCDgEfG1ZXU0FDBgwJC0w="));
            holder.tvTag = (TextView) c.a(b, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAXw=="), TextView.class);
            this.f281c = b;
            b.setOnClickListener(new a(this, holder));
            holder.ivCheck = (ImageView) c.c(view, R.id.iv_check, e.a("UQsGCA9THloFJVwCGwFE"), ImageView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTag = null;
                holder.ivCheck = null;
                this.f281c.setOnClickListener(null);
                this.f281c = null;
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
        this.f280d = aVar;
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_bale_tag, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
