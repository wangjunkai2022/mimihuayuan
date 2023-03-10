package com.alibaba.android.vlayout;

import android.util.Pair;
import android.util.SparseArray;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import f.a.a.a.a;
import f.a.a.a.k;
import f.a.a.a.l.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class DelegateAdapter extends VirtualLayoutAdapter<RecyclerView.ViewHolder> {
    @Nullable
    public AtomicInteger b;

    /* renamed from: c  reason: collision with root package name */
    public int f41c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f42d;

    /* renamed from: e  reason: collision with root package name */
    public SparseArray<Adapter> f43e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final List<Pair<AdapterDataObserver, Adapter>> f44f;

    /* renamed from: g  reason: collision with root package name */
    public int f45g;

    /* renamed from: h  reason: collision with root package name */
    public final SparseArray<Pair<AdapterDataObserver, Adapter>> f46h;

    /* renamed from: i  reason: collision with root package name */
    public long[] f47i;

    /* loaded from: classes.dex */
    public static abstract class Adapter<VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {
        public void a() {
        }

        public void b(RecyclerView.ViewHolder viewHolder, int i2, int i3) {
            a();
        }

        public abstract a c();
    }

    public DelegateAdapter(VirtualLayoutManager virtualLayoutManager, boolean z) {
        super(virtualLayoutManager);
        this.f41c = 0;
        this.f43e = new SparseArray<>();
        this.f44f = new ArrayList();
        this.f45g = 0;
        this.f46h = new SparseArray<>();
        this.f47i = new long[2];
        this.f42d = z;
    }

    public void a(int i2, @Nullable Adapter adapter) {
        c(i2, Collections.singletonList(adapter));
    }

    public void b(@Nullable Adapter adapter) {
        c(this.f44f.size(), Collections.singletonList(adapter));
    }

    public void c(int i2, @Nullable List<Adapter> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i2 > this.f44f.size()) {
            i2 = this.f44f.size();
        }
        ArrayList arrayList = new ArrayList();
        for (Pair<AdapterDataObserver, Adapter> pair : this.f44f) {
            arrayList.add((Adapter) pair.second);
        }
        for (Adapter adapter : list) {
            arrayList.add(i2, adapter);
            i2++;
        }
        h(arrayList);
    }

    public void d() {
        this.f45g = 0;
        this.f41c = 0;
        AtomicInteger atomicInteger = this.b;
        if (atomicInteger != null) {
            atomicInteger.set(0);
        }
        this.a.n(null);
        for (Pair<AdapterDataObserver, Adapter> pair : this.f44f) {
            ((Adapter) pair.second).unregisterAdapterDataObserver((RecyclerView.AdapterDataObserver) pair.first);
        }
        this.f43e.clear();
        this.f44f.clear();
        this.f46h.clear();
    }

    @Nullable
    public Pair<AdapterDataObserver, Adapter> e(int i2) {
        int size = this.f44f.size();
        if (size == 0) {
            return null;
        }
        int i3 = 0;
        int i4 = size - 1;
        while (i3 <= i4) {
            int i5 = (i3 + i4) / 2;
            Pair<AdapterDataObserver, Adapter> pair = this.f44f.get(i5);
            int itemCount = (((Adapter) pair.second).getItemCount() + ((AdapterDataObserver) pair.first).a) - 1;
            Object obj = pair.first;
            if (((AdapterDataObserver) obj).a > i2) {
                i4 = i5 - 1;
            } else if (itemCount < i2) {
                i3 = i5 + 1;
            } else if (((AdapterDataObserver) obj).a <= i2 && itemCount >= i2) {
                return pair;
            }
        }
        return null;
    }

    public int f(int i2) {
        Pair<AdapterDataObserver, Adapter> pair = this.f46h.get(i2);
        if (pair == null) {
            return -1;
        }
        return this.f44f.indexOf(pair);
    }

    public void g() {
        List singletonList;
        List<Pair<AdapterDataObserver, Adapter>> list = this.f44f;
        if (list == null || list.isEmpty()) {
            return;
        }
        Adapter adapter = (Adapter) this.f44f.get(0).second;
        if (adapter == null || (singletonList = Collections.singletonList(adapter)) == null || singletonList.isEmpty()) {
            return;
        }
        LinkedList linkedList = new LinkedList(Collections.unmodifiableList(((k) this.a.f80g).b));
        int size = singletonList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Adapter adapter2 = (Adapter) singletonList.get(i2);
            Iterator<Pair<AdapterDataObserver, Adapter>> it = this.f44f.iterator();
            while (true) {
                if (it.hasNext()) {
                    Pair<AdapterDataObserver, Adapter> next = it.next();
                    Adapter adapter3 = (Adapter) next.second;
                    if (adapter3.equals(adapter2)) {
                        adapter3.unregisterAdapterDataObserver((RecyclerView.AdapterDataObserver) next.first);
                        int f2 = f(((AdapterDataObserver) next.first).b);
                        if (f2 >= 0 && f2 < linkedList.size()) {
                            linkedList.remove(f2);
                        }
                        it.remove();
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Pair<AdapterDataObserver, Adapter> pair : this.f44f) {
            arrayList.add(pair.second);
        }
        h(arrayList);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f45g;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i2) {
        Pair<AdapterDataObserver, Adapter> e2 = e(i2);
        if (e2 == null) {
            return -1L;
        }
        long itemId = ((Adapter) e2.second).getItemId(i2 - ((AdapterDataObserver) e2.first).a);
        if (itemId < 0) {
            return -1L;
        }
        long j2 = ((AdapterDataObserver) e2.first).b + itemId;
        return (((1 + j2) * j2) / 2) + itemId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        Pair<AdapterDataObserver, Adapter> e2 = e(i2);
        if (e2 == null) {
            return -1;
        }
        int itemViewType = ((Adapter) e2.second).getItemViewType(i2 - ((AdapterDataObserver) e2.first).a);
        if (itemViewType < 0) {
            return itemViewType;
        }
        if (this.f42d) {
            this.f43e.put(itemViewType, e2.second);
            return itemViewType;
        }
        long j2 = ((AdapterDataObserver) e2.first).b;
        long j3 = itemViewType + j2;
        return (int) ((((1 + j3) * j3) / 2) + j2);
    }

    public void h(@Nullable List<Adapter> list) {
        int incrementAndGet;
        d();
        LinkedList linkedList = new LinkedList();
        this.f45g = 0;
        boolean z = true;
        for (Adapter adapter : list) {
            int i2 = this.f45g;
            AtomicInteger atomicInteger = this.b;
            if (atomicInteger == null) {
                incrementAndGet = this.f41c;
                this.f41c = incrementAndGet + 1;
            } else {
                incrementAndGet = atomicInteger.incrementAndGet();
            }
            AdapterDataObserver adapterDataObserver = new AdapterDataObserver(i2, incrementAndGet);
            adapter.registerAdapterDataObserver(adapterDataObserver);
            z = z && adapter.hasStableIds();
            a c2 = adapter.c();
            c2.j(adapter.getItemCount());
            this.f45g += ((b) c2).n;
            linkedList.add(c2);
            Pair<AdapterDataObserver, Adapter> create = Pair.create(adapterDataObserver, adapter);
            this.f46h.put(adapterDataObserver.b, create);
            this.f44f.add(create);
        }
        if (!hasObservers()) {
            super.setHasStableIds(z);
        }
        this.a.n(linkedList);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2, List<Object> list) {
        super.onBindViewHolder(viewHolder, i2, list);
        Pair<AdapterDataObserver, Adapter> e2 = e(i2);
        if (e2 == null) {
            return;
        }
        ((Adapter) e2.second).onBindViewHolder(viewHolder, i2 - ((AdapterDataObserver) e2.first).a, list);
        ((Adapter) e2.second).b(viewHolder, i2 - ((AdapterDataObserver) e2.first).a, i2);
    }

    /* JADX WARN: Type inference failed for: r9v1, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder] */
    /* JADX WARN: Type inference failed for: r9v2, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        int i3;
        if (this.f42d) {
            Adapter adapter = this.f43e.get(i2);
            if (adapter != null) {
                return adapter.onCreateViewHolder(viewGroup, i2);
            }
            return null;
        }
        long j2 = i2;
        long[] jArr = this.f47i;
        if (jArr == null || jArr.length < 2) {
            jArr = new long[2];
        }
        int floor = (int) (Math.floor(Math.sqrt((8 * j2) + 1) - 1.0d) / 2.0d);
        jArr[0] = floor - i3;
        jArr[1] = (int) (j2 - (((floor * floor) + floor) / 2));
        long[] jArr2 = this.f47i;
        int i4 = (int) jArr2[1];
        int i5 = (int) jArr2[0];
        Adapter adapter2 = (Adapter) this.f46h.get(i4).second;
        if (adapter2 == null) {
            return null;
        }
        return adapter2.onCreateViewHolder(viewGroup, i5);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        Pair<AdapterDataObserver, Adapter> e2;
        super.onViewAttachedToWindow(viewHolder);
        int position = viewHolder.getPosition();
        if (position <= 0 || (e2 = e(position)) == null) {
            return;
        }
        ((Adapter) e2.second).onViewAttachedToWindow(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        Pair<AdapterDataObserver, Adapter> e2;
        super.onViewDetachedFromWindow(viewHolder);
        int position = viewHolder.getPosition();
        if (position <= 0 || (e2 = e(position)) == null) {
            return;
        }
        ((Adapter) e2.second).onViewDetachedFromWindow(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        Pair<AdapterDataObserver, Adapter> e2;
        super.onViewRecycled(viewHolder);
        int position = viewHolder.getPosition();
        if (position <= 0 || (e2 = e(position)) == null) {
            return;
        }
        ((Adapter) e2.second).onViewRecycled(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void setHasStableIds(boolean z) {
    }

    /* loaded from: classes.dex */
    public class AdapterDataObserver extends RecyclerView.AdapterDataObserver {
        public int a;
        public int b;

        public AdapterDataObserver(int i2, int i3) {
            this.b = -1;
            this.a = i2;
            this.b = i3;
        }

        public final boolean a() {
            int f2;
            int i2 = this.b;
            if (i2 >= 0 && (f2 = DelegateAdapter.this.f(i2)) >= 0) {
                Pair<AdapterDataObserver, Adapter> pair = DelegateAdapter.this.f44f.get(f2);
                LinkedList linkedList = new LinkedList(Collections.unmodifiableList(((k) DelegateAdapter.this.a.f80g).b));
                a aVar = (a) linkedList.get(f2);
                if (((b) aVar).n != ((Adapter) pair.second).getItemCount()) {
                    aVar.j(((Adapter) pair.second).getItemCount());
                    DelegateAdapter.this.f45g = ((Adapter) pair.second).getItemCount() + this.a;
                    for (int i3 = f2 + 1; i3 < DelegateAdapter.this.f44f.size(); i3++) {
                        Pair<AdapterDataObserver, Adapter> pair2 = DelegateAdapter.this.f44f.get(i3);
                        DelegateAdapter delegateAdapter = DelegateAdapter.this;
                        int i4 = delegateAdapter.f45g;
                        ((AdapterDataObserver) pair2.first).a = i4;
                        delegateAdapter.f45g = ((Adapter) pair2.second).getItemCount() + i4;
                    }
                    DelegateAdapter.this.a.n(linkedList);
                }
                return true;
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            if (a()) {
                DelegateAdapter.this.notifyDataSetChanged();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i2, int i3) {
            if (a()) {
                DelegateAdapter.this.notifyItemRangeChanged(this.a + i2, i3);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i2, int i3) {
            if (a()) {
                DelegateAdapter.this.notifyItemRangeInserted(this.a + i2, i3);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i2, int i3, int i4) {
            if (a()) {
                DelegateAdapter delegateAdapter = DelegateAdapter.this;
                int i5 = this.a;
                delegateAdapter.notifyItemMoved(i2 + i5, i5 + i3);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i2, int i3) {
            if (a()) {
                DelegateAdapter.this.notifyItemRangeRemoved(this.a + i2, i3);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i2, int i3, Object obj) {
            if (a()) {
                DelegateAdapter.this.notifyItemRangeChanged(this.a + i2, i3, obj);
            }
        }
    }
}
