package com.comeback.data.ui.mimei.adapter;

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
import com.comeback.data.ui.mimei.NovelReadActivity;
import com.comeback.data.ui.mimei.bean.MimeiNovelItem;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class NovelAdapter extends BaseAbstractAdapter<MimeiNovelItem> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<MimeiNovelItem> {
        public NovelAdapter a;
        public MimeiNovelItem b;
        @BindView
        public TextView tvIntro;
        @BindView
        public TextView tvName;

        public Holder(View view, NovelAdapter novelAdapter) {
            super(view);
            this.a = novelAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(MimeiNovelItem mimeiNovelItem) {
            MimeiNovelItem mimeiNovelItem2 = mimeiNovelItem;
            this.b = mimeiNovelItem2;
            this.tvName.setText(mimeiNovelItem2.getTitle());
            this.tvIntro.setText(mimeiNovelItem2.getDesc());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1696c;

        /* compiled from: NovelAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1697c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1697c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1697c;
                NovelReadActivity.l(holder.a.a, holder.b.getTitle(), holder.b.getFilepath());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f1696c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvName = null;
                holder.tvIntro = null;
                this.f1696c.setOnClickListener(null);
                this.f1696c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public NovelAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_mimei_novel, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
