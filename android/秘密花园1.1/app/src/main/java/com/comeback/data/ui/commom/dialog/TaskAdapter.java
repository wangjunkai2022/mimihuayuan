package com.comeback.data.ui.commom.dialog;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
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
import com.comeback.data.ui.main.bean.InstallTask;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class TaskAdapter extends BaseAbstractAdapter<InstallTask> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<InstallTask> {
        public TaskAdapter a;
        public InstallTask b;
        @BindView
        public TextView tvName;

        public Holder(View view, TaskAdapter taskAdapter) {
            super(view);
            this.a = taskAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(InstallTask installTask) {
            InstallTask installTask2 = installTask;
            this.b = installTask2;
            this.tvName.setText(installTask2.getName());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f397c;

        /* compiled from: TaskAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f398c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f398c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f398c;
                if (holder != null) {
                    try {
                        holder.a.a.startActivity(new Intent(e.a("VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="), Uri.parse(holder.b.getUrl())));
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                throw null;
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            View b = c.b(view, R.id.tv_down, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f397c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvName = null;
                this.f397c.setOnClickListener(null);
                this.f397c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public TaskAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_commom_task, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
