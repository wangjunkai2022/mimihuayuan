package com.alibaba.android.vlayout;

import android.content.Context;
import android.graphics.Rect;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx;
import f.a.a.a.i;
import f.a.a.a.j;
import f.a.a.a.k;
import f.a.a.a.l.h;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

/* loaded from: classes.dex */
public class VirtualLayoutManager extends ExposeLinearLayoutManagerEx implements f.a.a.a.c {
    public static f.a.a.a.a u = new f.a.a.a.l.d();
    public RecyclerView b;

    /* renamed from: g  reason: collision with root package name */
    public f.a.a.a.b f80g;
    public boolean r;

    /* renamed from: c  reason: collision with root package name */
    public boolean f76c = false;

    /* renamed from: d  reason: collision with root package name */
    public boolean f77d = false;

    /* renamed from: e  reason: collision with root package name */
    public boolean f78e = false;

    /* renamed from: f  reason: collision with root package name */
    public int f79f = -1;

    /* renamed from: h  reason: collision with root package name */
    public f.a.a.a.l.e f81h = f.a.a.a.l.e.f3311e;

    /* renamed from: i  reason: collision with root package name */
    public HashMap<Integer, f.a.a.a.a> f82i = new HashMap<>();

    /* renamed from: j  reason: collision with root package name */
    public HashMap<Integer, f.a.a.a.a> f83j = new HashMap<>();

    /* renamed from: k  reason: collision with root package name */
    public d f84k = new d();

    /* renamed from: l  reason: collision with root package name */
    public int f85l = 0;

    /* renamed from: m  reason: collision with root package name */
    public f f86m = new f();
    public List<Pair<j<Integer>, Integer>> n = new LinkedList();
    public f.a.a.a.a o = u;
    public f.a.a.a.e p = new c(this);
    public Rect q = new Rect();
    public int s = 0;
    public boolean t = false;
    public i a = i.a(this, 1);

    /* loaded from: classes.dex */
    public static class InflateLayoutParams extends LayoutParams {
        public InflateLayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = VirtualLayoutManager.this.b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }
    }

    /* loaded from: classes.dex */
    public class b implements Comparator<Pair<j<Integer>, Integer>> {
        public b(VirtualLayoutManager virtualLayoutManager) {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // java.util.Comparator
        public int compare(Pair<j<Integer>, Integer> pair, Pair<j<Integer>, Integer> pair2) {
            Pair<j<Integer>, Integer> pair3 = pair;
            Pair<j<Integer>, Integer> pair4 = pair2;
            if (pair3 == null && pair4 == null) {
                return 0;
            }
            if (pair3 == null) {
                return -1;
            }
            if (pair4 == null) {
                return 1;
            }
            return ((Integer) ((j) pair3.first).a).intValue() - ((Integer) ((j) pair4.first).a).intValue();
        }
    }

    /* loaded from: classes.dex */
    public class c implements f.a.a.a.e {
        public c(VirtualLayoutManager virtualLayoutManager) {
        }
    }

    /* loaded from: classes.dex */
    public static class d {
        public int a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f87c;
    }

    /* loaded from: classes.dex */
    public interface e {
        boolean a();
    }

    /* loaded from: classes.dex */
    public static class f {
        public ExposeLinearLayoutManagerEx.c a;
    }

    /* loaded from: classes.dex */
    public static class g extends RecyclerView.ViewHolder {
        public g(View view) {
            super(view);
        }
    }

    public VirtualLayoutManager(@NonNull Context context) {
        super(context, 1, false);
        this.r = false;
        i.a(this, 0);
        k kVar = new k();
        LinkedList linkedList = new LinkedList();
        f.a.a.a.b<f.a.a.a.a> bVar = this.f80g;
        if (bVar != null) {
            for (f.a.a.a.a aVar : bVar) {
                linkedList.add(aVar);
            }
        }
        this.f80g = kVar;
        if (linkedList.size() > 0) {
            this.f80g.c(linkedList);
        }
        this.r = false;
        requestLayout();
    }

    public void a(View view, int i2) {
        super.addView(view, i2);
    }

    public void b(f fVar, View view) {
        c(fVar, view, fVar.a.f66g == 1 ? -1 : 0);
    }

    public void c(f fVar, View view, int i2) {
        showView(view);
        if (!(fVar.a.f71l != null)) {
            addView(view, i2);
        } else {
            addDisappearingView(view, i2);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return super.canScrollHorizontally() && !this.f76c;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return super.canScrollVertically() && !this.f76c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx
    public int computeAlignOffset(View view, boolean z, boolean z2) {
        return computeAlignOffset(getPosition(view), z, z2);
    }

    public void d(View view) {
        showView(view);
        addHiddenView(view, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void detachAndScrapAttachedViews(RecyclerView.Recycler recycler) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            RecyclerView.ViewHolder h2 = h(getChildAt(childCount));
            if ((h2 instanceof e) && ((e) h2).a()) {
                ExposeLinearLayoutManagerEx.d.a(h2, 0, 6);
            }
        }
        super.detachAndScrapAttachedViews(recycler);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void detachAndScrapView(View view, RecyclerView.Recycler recycler) {
        super.detachAndScrapView(view, recycler);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void detachAndScrapViewAt(int i2, RecyclerView.Recycler recycler) {
        RecyclerView.ViewHolder h2 = h(getChildAt(i2));
        if ((h2 instanceof e) && ((e) h2).a()) {
            ExposeLinearLayoutManagerEx.d.a(h2, 0, 4);
        }
        super.detachAndScrapViewAt(i2, recycler);
    }

    public f.a.a.a.a e(int i2) {
        return this.f80g.b(i2);
    }

    public final View f() {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null) {
            return null;
        }
        f.a.a.a.e eVar = this.p;
        Context context = recyclerView.getContext();
        if (((c) eVar) != null) {
            f.a.a.a.d dVar = new f.a.a.a.d(context);
            LayoutParams layoutParams = new LayoutParams(-2, -2);
            ExposeLinearLayoutManagerEx.attachViewHolder(layoutParams, new g(dVar));
            dVar.setLayoutParams(layoutParams);
            return dVar;
        }
        throw null;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View findViewByPosition(int i2) {
        View findViewByPosition = super.findViewByPosition(i2);
        if (findViewByPosition != null && getPosition(findViewByPosition) == i2) {
            return findViewByPosition;
        }
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            if (childAt != null && getPosition(childAt) == i2) {
                return childAt;
            }
        }
        return null;
    }

    public int g(int i2, int i3, boolean z) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(i2, 0, i3, z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((RecyclerView.LayoutParams) ((LayoutParams) layoutParams));
        }
        if (layoutParams instanceof RecyclerView.LayoutParams) {
            return new LayoutParams((RecyclerView.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, f.a.a.a.c
    public int getOrientation() {
        return super.getOrientation();
    }

    public RecyclerView.ViewHolder h(View view) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getChildViewHolder(view);
        }
        return null;
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx
    public void hideView(View view) {
        super.hideView(view);
    }

    public int i() {
        return super.getHeight();
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, f.a.a.a.c
    public boolean isEnableMarginOverLap() {
        return this.f78e;
    }

    public int j() {
        return super.getWidth();
    }

    public void k(View view, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        layoutDecorated(view, i2 + marginLayoutParams.leftMargin, i3 + marginLayoutParams.topMargin, i4 - marginLayoutParams.rightMargin, i5 - marginLayoutParams.bottomMargin);
    }

    public final void l(RecyclerView.Recycler recycler, RecyclerView.State state, int i2) {
        int i3 = this.f85l - 1;
        this.f85l = i3;
        if (i3 <= 0) {
            this.f85l = 0;
            int findFirstVisibleItemPosition = findFirstVisibleItemPosition();
            int findLastVisibleItemPosition = findLastVisibleItemPosition();
            for (f.a.a.a.a aVar : this.f80g) {
                try {
                    aVar.a(recycler, state, findFirstVisibleItemPosition, findLastVisibleItemPosition, i2, this);
                } catch (Exception unused) {
                }
            }
        }
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx
    public void layoutChunk(RecyclerView.Recycler recycler, RecyclerView.State state, ExposeLinearLayoutManagerEx.c cVar, h hVar) {
        int i2 = cVar.f65f;
        this.f86m.a = cVar;
        f.a.a.a.b bVar = this.f80g;
        Pair<j<Integer>, Integer> pair = null;
        f.a.a.a.a b2 = bVar == null ? null : bVar.b(i2);
        if (b2 == null) {
            b2 = this.o;
        }
        ((f.a.a.a.l.b) b2).v(recycler, state, this.f86m, hVar, this);
        this.f86m.a = null;
        int i3 = cVar.f65f;
        if (i3 == i2) {
            b2.getClass().getSimpleName();
            b2.toString();
            hVar.b = true;
            return;
        }
        int i4 = i3 - cVar.f66g;
        int i5 = 0;
        int i6 = hVar.f3315c ? 0 : hVar.a;
        j jVar = new j(Integer.valueOf(Math.min(i2, i4)), Integer.valueOf(Math.max(i2, i4)));
        int size = this.n.size();
        int i7 = -1;
        if (size != 0) {
            int i8 = size - 1;
            int i9 = -1;
            while (i5 <= i8) {
                i9 = (i5 + i8) / 2;
                Pair<j<Integer>, Integer> pair2 = this.n.get(i9);
                j jVar2 = (j) pair2.first;
                if (jVar2 == null) {
                    break;
                } else if (jVar2.b(jVar.a) || jVar2.b(jVar.b) || jVar.a(jVar2)) {
                    pair = pair2;
                    break;
                } else if (((Integer) jVar2.a).intValue() > ((Integer) jVar.b).intValue()) {
                    i8 = i9 - 1;
                } else if (((Integer) jVar2.b).intValue() < ((Integer) jVar.a).intValue()) {
                    i5 = i9 + 1;
                }
            }
            if (pair != null) {
                i7 = i9;
            }
        }
        if (i7 >= 0) {
            Pair<j<Integer>, Integer> pair3 = this.n.get(i7);
            if (pair3 == null || !((j) pair3.first).equals(jVar) || ((Integer) pair3.second).intValue() != i6) {
                this.n.remove(i7);
            } else {
                return;
            }
        }
        this.n.add(Pair.create(jVar, Integer.valueOf(i6)));
        Collections.sort(this.n, new b(this));
    }

    public final void m(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.f85l == 0) {
            List<f.a.a.a.a> list = ((k) this.f80g).b;
            ListIterator<f.a.a.a.a> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                listIterator.previous().b(recycler, state, this);
            }
        }
        this.f85l++;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager, f.a.a.a.c
    public void measureChild(View view, int i2, int i3) {
        calculateItemDecorationsForChild(view, this.q);
        Rect rect = this.q;
        int updateSpecWithExtra = updateSpecWithExtra(i2, rect.left, rect.right);
        Rect rect2 = this.q;
        view.measure(updateSpecWithExtra, updateSpecWithExtra(i3, rect2.top, rect2.bottom));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager, f.a.a.a.c
    public void measureChildWithMargins(View view, int i2, int i3) {
        calculateItemDecorationsForChild(view, this.q);
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (getOrientation() == 1) {
            int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            Rect rect = this.q;
            i2 = updateSpecWithExtra(i2, i4 + rect.left, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        }
        if (getOrientation() == 0) {
            Rect rect2 = this.q;
            i3 = updateSpecWithExtra(i3, rect2.top, rect2.bottom);
        }
        view.measure(i2, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void moveView(int i2, int i3) {
        super.moveView(i2, i3);
    }

    public void n(@Nullable List<f.a.a.a.a> list) {
        for (f.a.a.a.a aVar : this.f80g) {
            this.f83j.put(Integer.valueOf(System.identityHashCode(aVar)), aVar);
        }
        if (list != null) {
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                f.a.a.a.a aVar2 = list.get(i3);
                if (aVar2 instanceof f.a.a.a.l.f) {
                    ((f.a.a.a.l.f) aVar2).p = this.f81h;
                }
                boolean z = aVar2 instanceof f.a.a.a.l.b;
                f.a.a.a.l.b bVar = (f.a.a.a.l.b) aVar2;
                int i4 = bVar.n;
                if (i4 > 0) {
                    aVar2.k(i2, (i4 + i2) - 1);
                } else {
                    aVar2.k(-1, -1);
                }
                i2 += bVar.n;
            }
        }
        this.f80g.c(list);
        for (f.a.a.a.a aVar3 : this.f80g) {
            this.f82i.put(Integer.valueOf(System.identityHashCode(aVar3)), aVar3);
        }
        Iterator<Map.Entry<Integer, f.a.a.a.a>> it = this.f83j.entrySet().iterator();
        while (it.hasNext()) {
            Integer key = it.next().getKey();
            if (this.f82i.containsKey(key)) {
                this.f82i.remove(key);
                it.remove();
            }
        }
        Iterator<f.a.a.a.a> it2 = this.f83j.values().iterator();
        while (it2.hasNext()) {
            f.a.a.a.l.b bVar2 = (f.a.a.a.l.b) it2.next();
            View view = bVar2.f3309l;
            if (view != null) {
                removeView(view);
                bVar2.f3309l = null;
            }
            bVar2.x(this);
        }
        if (!this.f83j.isEmpty() || !this.f82i.isEmpty()) {
            this.r = false;
        }
        this.f83j.clear();
        this.f82i.clear();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void offsetChildrenHorizontal(int i2) {
        super.offsetChildrenHorizontal(i2);
        for (f.a.a.a.a aVar : this.f80g) {
            if (aVar == null) {
                throw null;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void offsetChildrenVertical(int i2) {
        super.offsetChildrenVertical(i2);
        for (f.a.a.a.a aVar : this.f80g) {
            if (aVar == null) {
                throw null;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        super.onAdapterChanged(adapter, adapter2);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx
    public void onAnchorReady(RecyclerView.State state, ExposeLinearLayoutManagerEx.a aVar) {
        super.onAnchorReady(state, aVar);
        boolean z = true;
        while (z) {
            d dVar = this.f84k;
            int i2 = aVar.a;
            dVar.a = i2;
            dVar.b = aVar.b;
            dVar.f87c = aVar.f49c;
            f.a.a.a.a b2 = this.f80g.b(i2);
            if (b2 != null) {
                b2.c(state, this.f84k, this);
            }
            int i3 = this.f84k.a;
            if (i3 == aVar.a) {
                z = false;
            } else {
                aVar.a = i3;
            }
            d dVar2 = this.f84k;
            aVar.b = dVar2.b;
            dVar2.a = -1;
        }
        d dVar3 = this.f84k;
        dVar3.a = aVar.a;
        dVar3.b = aVar.b;
        for (f.a.a.a.a aVar2 : this.f80g) {
            if (aVar2 == null) {
                throw null;
            }
        }
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.b = recyclerView;
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        for (f.a.a.a.l.b bVar : this.f80g) {
            View view = bVar.f3309l;
            if (view != null) {
                removeView(view);
                bVar.f3309l = null;
            }
            bVar.x(this);
        }
        this.b = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i2, int i3) {
        onItemsChanged(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        for (f.a.a.a.a aVar : this.f80g) {
            aVar.h(this);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i2, int i3, int i4) {
        onItemsChanged(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i2, int i3) {
        onItemsChanged(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i2, int i3) {
        onItemsChanged(recyclerView);
    }

    /* JADX INFO: finally extract failed */
    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        Trace.beginSection("VLM onLayoutChildren");
        if (this.f76c && state.didStructureChange()) {
            this.r = false;
            this.t = true;
        }
        m(recycler, state);
        try {
            try {
                super.onLayoutChildren(recycler, state);
                l(recycler, state, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                if ((this.f77d || this.f76c) && this.t) {
                    this.r = true;
                    View childAt = getChildAt(getChildCount() - 1);
                    if (childAt != null) {
                        this.s = computeAlignOffset(childAt, true, false) + getDecoratedBottom(childAt) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).bottomMargin;
                        RecyclerView recyclerView = this.b;
                        if (recyclerView != null && this.f77d) {
                            ViewParent parent = recyclerView.getParent();
                            if (parent instanceof View) {
                                this.s = Math.min(this.s, ((View) parent).getMeasuredHeight());
                            }
                        }
                    } else {
                        this.t = false;
                    }
                    this.t = false;
                    if (this.b != null && getItemCount() > 0) {
                        this.b.post(new a());
                    }
                }
                Trace.endSection();
            } catch (Exception e2) {
                e2.printStackTrace();
                throw e2;
            }
        } catch (Throwable th) {
            l(recycler, state, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0032  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x009b  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00a3  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(androidx.recyclerview.widget.RecyclerView.Recycler r9, androidx.recyclerview.widget.RecyclerView.State r10, int r11, int r12) {
        /*
            r8 = this;
            boolean r0 = r8.f76c
            if (r0 != 0) goto L_0x000c
            boolean r0 = r8.f77d
            if (r0 != 0) goto L_0x000c
            super.onMeasure(r9, r10, r11, r12)
            return
        L_0x000c:
            androidx.recyclerview.widget.RecyclerView r0 = r8.b
            r1 = 134217727(0x7ffffff, float:3.8518597E-34)
            if (r0 == 0) goto L_0x002b
            boolean r2 = r8.f77d
            if (r2 == 0) goto L_0x002b
            int r2 = r8.f79f
            if (r2 <= 0) goto L_0x001c
            goto L_0x002e
        L_0x001c:
            android.view.ViewParent r0 = r0.getParent()
            boolean r2 = r0 instanceof android.view.View
            if (r2 == 0) goto L_0x002b
            android.view.View r0 = (android.view.View) r0
            int r2 = r0.getMeasuredHeight()
            goto L_0x002e
        L_0x002b:
            r2 = 134217727(0x7ffffff, float:3.8518597E-34)
        L_0x002e:
            boolean r0 = r8.r
            if (r0 == 0) goto L_0x0034
            int r2 = r8.s
        L_0x0034:
            boolean r0 = r8.f76c
            r3 = 0
            r4 = 1
            if (r0 == 0) goto L_0x0093
            boolean r0 = r8.r
            r0 = r0 ^ r4
            r8.t = r0
            int r0 = r8.getChildCount()
            if (r0 > 0) goto L_0x005c
            int r0 = r8.getChildCount()
            int r5 = r8.getItemCount()
            if (r0 == r5) goto L_0x0050
            goto L_0x005c
        L_0x0050:
            int r0 = r8.getItemCount()
            if (r0 != 0) goto L_0x0093
            r8.r = r4
            r8.t = r3
            r2 = 0
            goto L_0x0093
        L_0x005c:
            int r0 = r8.getChildCount()
            int r0 = r0 - r4
            android.view.View r0 = r8.getChildAt(r0)
            int r5 = r8.s
            if (r0 == 0) goto L_0x007b
            android.view.ViewGroup$LayoutParams r5 = r0.getLayoutParams()
            androidx.recyclerview.widget.RecyclerView$LayoutParams r5 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) r5
            int r6 = r8.getDecoratedBottom(r0)
            int r5 = r5.bottomMargin
            int r6 = r6 + r5
            int r5 = r8.computeAlignOffset(r0, r4, r3)
            int r5 = r5 + r6
        L_0x007b:
            int r6 = r8.getChildCount()
            int r7 = r8.getItemCount()
            if (r6 != r7) goto L_0x008e
            if (r0 == 0) goto L_0x008c
            int r0 = r8.s
            if (r5 == r0) goto L_0x008c
            goto L_0x008e
        L_0x008c:
            r1 = r2
            goto L_0x0092
        L_0x008e:
            r8.r = r3
            r8.t = r4
        L_0x0092:
            r2 = r1
        L_0x0093:
            int r0 = r8.getOrientation()
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r4) goto L_0x00a3
            int r12 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r1)
            super.onMeasure(r9, r10, r11, r12)
            goto L_0x00aa
        L_0x00a3:
            int r11 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r1)
            super.onMeasure(r9, r10, r11, r12)
        L_0x00aa:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.android.vlayout.VirtualLayoutManager.onMeasure(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, int, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int i2) {
        super.onScrollStateChanged(i2);
        findFirstVisibleItemPosition();
        findLastVisibleItemPosition();
        for (f.a.a.a.a aVar : this.f80g) {
            if (aVar == null) {
                throw null;
            }
        }
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx
    public void recycleChildren(RecyclerView.Recycler recycler, int i2, int i3) {
        if (i2 != i3) {
            if (i3 > i2) {
                View childAt = getChildAt(i3 - 1);
                int position = getPosition(getChildAt(i2));
                int position2 = getPosition(childAt);
                int i4 = i2;
                while (i2 < i3) {
                    int position3 = getPosition(getChildAt(i4));
                    if (position3 != -1) {
                        f.a.a.a.a b2 = this.f80g.b(position3);
                        if (b2 == null || b2.g(position3, position, position2, this, true)) {
                            removeAndRecycleViewAt(i4, recycler);
                        } else {
                            i4++;
                        }
                    } else {
                        removeAndRecycleViewAt(i4, recycler);
                    }
                    i2++;
                }
                return;
            }
            View childAt2 = getChildAt(i2);
            int position4 = getPosition(getChildAt(i3 + 1));
            int position5 = getPosition(childAt2);
            while (i2 > i3) {
                int position6 = getPosition(getChildAt(i2));
                if (position6 != -1) {
                    f.a.a.a.a b3 = this.f80g.b(position6);
                    if (b3 == null || b3.g(position6, position4, position5, this, false)) {
                        removeAndRecycleViewAt(i2, recycler);
                    }
                } else {
                    removeAndRecycleViewAt(i2, recycler);
                }
                i2--;
            }
        }
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx
    public int scrollInternalBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        try {
            Trace.beginSection("VLM scroll");
            m(recycler, state);
            int i3 = 0;
            try {
                if (!this.f76c) {
                    i2 = super.scrollInternalBy(i2, recycler, state);
                } else {
                    if (!(getChildCount() == 0 || i2 == 0)) {
                        ((ExposeLinearLayoutManagerEx) this).mLayoutState.f62c = true;
                        ensureLayoutStateExpose();
                        int i4 = i2 > 0 ? 1 : -1;
                        int abs = Math.abs(i2);
                        updateLayoutStateExpose(i4, abs, true, state);
                        int fill = ((ExposeLinearLayoutManagerEx) this).mLayoutState.f68i + fill(recycler, ((ExposeLinearLayoutManagerEx) this).mLayoutState, state, false);
                        if (fill < 0) {
                            return 0;
                        }
                        if (abs > fill) {
                            i2 = i4 * fill;
                        }
                    }
                    return 0;
                }
                i3 = i2;
            } catch (Exception e2) {
                Log.getStackTraceString(e2);
            }
            Trace.endSection();
            return i3;
        } finally {
            l(recycler, state, 0);
        }
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i2) {
        super.scrollToPosition(i2);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager
    public void scrollToPositionWithOffset(int i2, int i3) {
        super.scrollToPositionWithOffset(i2, i3);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager
    public void setOrientation(int i2) {
        this.a = i.a(this, i2);
        super.setOrientation(i2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setReverseLayout(boolean z) {
        if (!z) {
            super.setReverseLayout(false);
            return;
        }
        throw new UnsupportedOperationException("VirtualLayoutManager does not support reverse layout in current version.");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z) {
        if (!z) {
            super.setStackFromEnd(false);
            return;
        }
        throw new UnsupportedOperationException("VirtualLayoutManager does not support stack from end.");
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, f.a.a.a.c
    public void showView(View view) {
        super.showView(view);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i2) {
        super.smoothScrollToPosition(recyclerView, state, i2);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mCurrentPendingSavedState == null;
    }

    public final int updateSpecWithExtra(int i2, int i3, int i4) {
        if (i3 == 0 && i4 == 0) {
            return i2;
        }
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != Integer.MIN_VALUE && mode != 1073741824) {
            return i2;
        }
        if ((View.MeasureSpec.getSize(i2) - i3) - i4 < 0) {
            return View.MeasureSpec.makeMeasureSpec(0, mode);
        }
        return View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i2) - i3) - i4, mode);
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams {
        public float a = Float.NaN;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx
    public int computeAlignOffset(int i2, boolean z, boolean z2) {
        f.a.a.a.a b2;
        if (i2 == -1 || (b2 = this.f80g.b(i2)) == null) {
            return 0;
        }
        return b2.d(i2 - b2.a.a.intValue(), z, z2, this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new InflateLayoutParams(context, attributeSet);
    }
}
