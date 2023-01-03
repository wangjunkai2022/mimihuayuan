package com.comeback.data.ui.senlin.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.senlin.SenLinActivity;
import com.comeback.data.ui.senlin.bean.SenlinList;
import com.comeback.secret.garden.R;
import java.util.List;

/* loaded from: classes.dex */
public class VTypeItemAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public f.a.a.a.a a;
    public List<SenlinList.ClassEntity> b;

    /* renamed from: c  reason: collision with root package name */
    public b f1851c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ SenlinList.ClassEntity a;

        public a(SenlinList.ClassEntity classEntity) {
            this.a = classEntity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b bVar = VTypeItemAdapter.this.f1851c;
            SenlinList.ClassEntity classEntity = this.a;
            f.e.a.j.i0.b bVar2 = (f.e.a.j.i0.b) bVar;
            SenLinActivity senLinActivity = bVar2.a;
            senLinActivity.f1820g = null;
            senLinActivity.f1819f = classEntity;
            senLinActivity.r();
            bVar2.a.refreshLayout.h();
        }
    }

    /* loaded from: classes.dex */
    public interface b {
    }

    /* loaded from: classes.dex */
    public class c extends RecyclerView.ViewHolder {
        public TextView a;

        public c(VTypeItemAdapter vTypeItemAdapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_title);
        }
    }

    public VTypeItemAdapter(Context context, List<SenlinList.ClassEntity> list, f.a.a.a.a aVar, b bVar) {
        this.b = list;
        this.a = aVar;
        this.f1851c = bVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        c cVar = (c) viewHolder;
        SenlinList.ClassEntity classEntity = this.b.get(i2);
        cVar.a.setText(classEntity.getType_name());
        cVar.itemView.setOnClickListener(new a(classEntity));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new c(this, f.b.a.a.a.b(viewGroup, R.layout.item_senlin_type_item, viewGroup, false));
    }
}
