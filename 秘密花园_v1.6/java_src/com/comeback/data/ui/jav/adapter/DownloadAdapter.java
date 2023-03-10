package com.comeback.data.ui.jav.adapter;

import android.content.ClipData;
import android.content.ClipboardManager;
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
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.jav.bean.Download;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class DownloadAdapter extends BaseAbstractAdapter<Download> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Download> {
        public DownloadAdapter a;
        public Download b;
        @BindView
        public TextView tvTitle;
        @BindView
        public TextView tv_link;

        public Holder(View view, DownloadAdapter downloadAdapter) {
            super(view);
            this.a = downloadAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Download download) {
            Download download2 = download;
            this.b = download2;
            this.tvTitle.setText(download2.getDetail());
            this.tv_link.setText(download2.getMagnet());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1295c;

        /* compiled from: DownloadAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1296c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1296c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1296c;
                ((ClipboardManager) holder.a.a.getSystemService(e.a("VA4KFAkcWEEX"))).setPrimaryClip(ClipData.newPlainText(e.a("ewMBAQc="), holder.b.getMagnet()));
                h.p1(e.a("0sbugePF37vjg774"));
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tv_link = (TextView) c.c(view, R.id.tv_link, e.a("UQsGCA9THkcFOVgOFgFE"), TextView.class);
            View b = c.b(view, R.id.tv_copy, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f1295c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                holder.tv_link = null;
                this.f1295c.setOnClickListener(null);
                this.f1295c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public DownloadAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_jav_download, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
