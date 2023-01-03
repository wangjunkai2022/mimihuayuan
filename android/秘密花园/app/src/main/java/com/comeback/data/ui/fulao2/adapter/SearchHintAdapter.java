package com.comeback.data.ui.fulao2.adapter;

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
import com.comeback.data.ui.fulao2.PlayActivity;
import com.comeback.data.ui.fulao2.bean.VideosBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class SearchHintAdapter extends BaseAbstractAdapter<VideosBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<VideosBean> {
        public SearchHintAdapter a;
        public VideosBean b;
        @BindView
        public TextView tvCount;
        @BindView
        public TextView tvTitle;

        public Holder(View view, SearchHintAdapter searchHintAdapter) {
            super(view);
            this.a = searchHintAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideosBean videosBean) {
            VideosBean videosBean2 = videosBean;
            this.b = videosBean2;
            this.tvTitle.setText(videosBean2.getVideo_title());
            TextView textView = this.tvCount;
            textView.setText((getAdapterPosition() + 1) + e.a("GQ=="));
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f737c;

        /* compiled from: SearchHintAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f738c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f738c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f738c;
                PlayActivity.n(holder.a.a, holder.b.getVideo_id());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvCount = (TextView) c.c(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f737c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                holder.tvCount = null;
                this.f737c.setOnClickListener(null);
                this.f737c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public SearchHintAdapter(Context context) {
        super(context);
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder<Lcom/comeback/data/ui/fulao2/bean/VideosBean;>; */
    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_lutube_hint, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
