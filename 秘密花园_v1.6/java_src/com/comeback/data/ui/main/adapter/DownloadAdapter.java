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
import c.a.a.b.g.h;
import com.comeback.data.App;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.commom.LocalPlayActivity;
import com.comeback.data.ui.main.DownloadActivity;
import com.comeback.data.ui.main.bean.VideoCacheBean;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
import f.e.a.k.g;
import java.io.File;
/* loaded from: classes.dex */
public class DownloadAdapter extends BaseAbstractAdapter<VideoCacheBean> {

    /* renamed from: d  reason: collision with root package name */
    public a f1578d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<VideoCacheBean> {
        public VideoCacheBean a;
        public DownloadAdapter b;
        @BindView
        public TextView tvName;
        @BindView
        public TextView tvState;
        @BindView
        public TextView tvTime;

        public Holder(View view, DownloadAdapter downloadAdapter) {
            super(view);
            this.b = downloadAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoCacheBean videoCacheBean) {
            VideoCacheBean videoCacheBean2 = videoCacheBean;
            this.a = videoCacheBean2;
            this.tvName.setText(videoCacheBean2.getName());
            TextView textView = this.tvTime;
            textView.setText(e.a("0N7wgcbr3qjdg4nyQg==") + videoCacheBean2.getTempPath());
            this.tvState.setText(e.a(videoCacheBean2.isDownloadFinish() ? "0ODagezI36HegKDZ" : "0NnEg9De3Yv4jona"));
        }

        @OnClick
        public void onViewClicked(View view) {
            int id = view.getId();
            if (id == R.id.iv_delete) {
                f.e.a.h.a aVar = App.b.a;
                if (aVar != null && aVar.f3871e.getUrl().equals(this.a.getUrl())) {
                    aVar.d();
                    App.b.a = null;
                }
                File file = new File(this.a.getCachePath());
                if (file.exists()) {
                    file.delete();
                }
                h.y(new File(this.a.getTempPath()));
                g.d(this.a.getRealm()).c(VideoCacheBean.class, getAdapterPosition());
                DownloadAdapter downloadAdapter = this.b;
                int adapterPosition = getAdapterPosition();
                if (downloadAdapter != null) {
                    if (adapterPosition < 0 || adapterPosition >= downloadAdapter.b.size()) {
                        return;
                    }
                    downloadAdapter.b.remove(adapterPosition);
                    downloadAdapter.notifyItemRemoved(adapterPosition);
                    return;
                }
                throw null;
            } else if (id != R.id.ll_root) {
            } else {
                if (this.a.isDownloadFinish()) {
                    LocalPlayActivity.l(this.b.a, this.a.getCachePath(), this.a.getName());
                    return;
                }
                a aVar2 = this.b.f1578d;
                VideoCacheBean videoCacheBean = this.a;
                DownloadActivity downloadActivity = (DownloadActivity) aVar2;
                if (downloadActivity != null) {
                    if (App.b.a != null) {
                        h.p1(e.a("383Ug8b63I32g4n0nePuj4zZhu7Klpe/le6kgv7nhte3h/PLjeWJ18jd0e3Z"));
                        return;
                    }
                    TextView textView = downloadActivity.tvName;
                    textView.setText(e.a("0c/Agffb3Yv4jonal9b5") + videoCacheBean.getName());
                    f.e.a.h.a aVar3 = new f.e.a.h.a(videoCacheBean);
                    aVar3.b(downloadActivity);
                    App.b.a = aVar3;
                    return;
                }
                throw null;
            }
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1579c;

        /* renamed from: d  reason: collision with root package name */
        public View f1580d;

        /* compiled from: DownloadAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1581c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1581c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1581c.onViewClicked(view);
            }
        }

        /* compiled from: DownloadAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class b extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1582c;

            public b(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1582c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1582c.onViewClicked(view);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvTime = (TextView) c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
            holder.tvState = (TextView) c.c(view, R.id.tv_state, e.a("UQsGCA9THkcFNUAGDA9E"), TextView.class);
            View b2 = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
            this.f1579c = b2;
            b2.setOnClickListener(new a(this, holder));
            View b3 = c.b(view, R.id.iv_delete, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
            this.f1580d = b3;
            b3.setOnClickListener(new b(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvName = null;
                holder.tvTime = null;
                holder.tvState = null;
                this.f1579c.setOnClickListener(null);
                this.f1579c = null;
                this.f1580d.setOnClickListener(null);
                this.f1580d = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public interface a {
    }

    public DownloadAdapter(Context context, a aVar) {
        super(context);
        this.f1578d = aVar;
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_main_download, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
