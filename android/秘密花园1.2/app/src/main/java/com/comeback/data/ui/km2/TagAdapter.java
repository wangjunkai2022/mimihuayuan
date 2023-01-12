package com.comeback.data.ui.km2;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.km2.AreaChooseActivity;
import com.comeback.data.ui.km2.bean.AreaBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.List;

/* loaded from: classes.dex */
public class TagAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public f.a.a.a.a a;
    public List<AreaBean.DataEntity.AreaLisCityEntity.CityEntity> b;

    /* renamed from: c  reason: collision with root package name */
    public b f1421c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ AreaBean.DataEntity.AreaLisCityEntity.CityEntity a;

        public a(AreaBean.DataEntity.AreaLisCityEntity.CityEntity cityEntity) {
            this.a = cityEntity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b bVar = TagAdapter.this.f1421c;
            if (bVar != null) {
                AreaBean.DataEntity.AreaLisCityEntity.CityEntity cityEntity = this.a;
                AreaChooseActivity.a aVar = (AreaChooseActivity.a) bVar;
                if (aVar != null) {
                    Intent intent = new Intent();
                    intent.putExtra(e.a("XgY="), cityEntity.getId());
                    intent.putExtra(e.a("WQMOAQ=="), cityEntity.getName());
                    AreaChooseActivity.this.setResult(100, intent);
                    AreaChooseActivity.this.finish();
                    return;
                }
                throw null;
            }
        }
    }

    /* loaded from: classes.dex */
    public interface b {
    }

    /* loaded from: classes.dex */
    public class c extends RecyclerView.ViewHolder {
        public TextView a;

        public c(TagAdapter tagAdapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_tag);
        }
    }

    public TagAdapter(Context context, List<AreaBean.DataEntity.AreaLisCityEntity.CityEntity> list, f.a.a.a.a aVar, b bVar) {
        this.b = list;
        this.a = aVar;
        this.f1421c = bVar;
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
        AreaBean.DataEntity.AreaLisCityEntity.CityEntity cityEntity = this.b.get(i2);
        cVar.a.setText(cityEntity.getName());
        cVar.itemView.setOnClickListener(new a(cityEntity));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new c(this, f.b.a.a.a.b(viewGroup, R.layout.item_km_area, viewGroup, false));
    }
}
