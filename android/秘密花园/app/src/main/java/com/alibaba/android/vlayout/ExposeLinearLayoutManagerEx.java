package com.alibaba.android.vlayout;

import android.content.Context;
import android.graphics.PointF;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import f.a.a.a.i;
import f.a.a.a.l.h;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

/* loaded from: classes.dex */
public class ExposeLinearLayoutManagerEx extends LinearLayoutManager {
    public static final boolean DEBUG = false;
    public static final int FLAG_INVALID = 4;
    public static final int FLAG_UPDATED = 2;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    public static final float MAX_SCROLL_FACTOR = 0.33f;
    public static final String TAG = "ExposeLLManagerEx";
    public static final int VERTICAL = 1;
    public static Field vhField;
    public static Method vhSetFlags;
    public Object[] emptyArgs;
    public h layoutChunkResultCache;
    public final a mAnchorInfo;
    public final b mChildHelperWrapper;
    public Bundle mCurrentPendingSavedState;
    public int mCurrentPendingScrollPosition;
    public final Method mEnsureLayoutStateMethod;
    public boolean mLastStackFromEnd;
    public c mLayoutState;
    public i mOrientationHelper;
    public int mPendingScrollPositionOffset;
    public RecyclerView mRecyclerView;
    public boolean mShouldReverseLayoutExpose;
    public int recycleOffset;

    /* loaded from: classes.dex */
    public class a {
        public int a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f49c;

        public a() {
        }

        public void a() {
            int i2;
            if (this.f49c) {
                i2 = ExposeLinearLayoutManagerEx.this.mOrientationHelper.g();
            } else {
                i2 = ExposeLinearLayoutManagerEx.this.mOrientationHelper.i();
            }
            this.b = i2;
        }

        public void b(View view) {
            if (this.f49c) {
                int computeAlignOffset = ExposeLinearLayoutManagerEx.this.computeAlignOffset(view, this.f49c, true) + ExposeLinearLayoutManagerEx.this.mOrientationHelper.b(view);
                i iVar = ExposeLinearLayoutManagerEx.this.mOrientationHelper;
                this.b = computeAlignOffset + (Integer.MIN_VALUE == iVar.b ? 0 : iVar.j() - iVar.b);
            } else {
                this.b = ExposeLinearLayoutManagerEx.this.computeAlignOffset(view, this.f49c, true) + ExposeLinearLayoutManagerEx.this.mOrientationHelper.e(view);
            }
            this.a = ExposeLinearLayoutManagerEx.this.getPosition(view);
        }

        public String toString() {
            StringBuilder o = f.b.a.a.a.o("AnchorInfo{mPosition=");
            o.append(this.a);
            o.append(", mCoordinate=");
            o.append(this.b);
            o.append(", mLayoutFromEnd=");
            o.append(this.f49c);
            o.append('}');
            return o.toString();
        }
    }

    /* loaded from: classes.dex */
    public class b {
        public Object a;
        public Method b;

        /* renamed from: c  reason: collision with root package name */
        public Method f51c;

        /* renamed from: d  reason: collision with root package name */
        public Method f52d;

        /* renamed from: e  reason: collision with root package name */
        public Method f53e;

        /* renamed from: f  reason: collision with root package name */
        public Field f54f;

        /* renamed from: g  reason: collision with root package name */
        public Object f55g;

        /* renamed from: h  reason: collision with root package name */
        public Method f56h;

        /* renamed from: i  reason: collision with root package name */
        public Field f57i;

        /* renamed from: j  reason: collision with root package name */
        public List f58j;

        /* renamed from: k  reason: collision with root package name */
        public RecyclerView.LayoutManager f59k;

        /* renamed from: l  reason: collision with root package name */
        public Object[] f60l = new Object[1];

        public b(RecyclerView.LayoutManager layoutManager) {
            this.f59k = layoutManager;
            try {
                Field declaredField = RecyclerView.LayoutManager.class.getDeclaredField("mChildHelper");
                this.f57i = declaredField;
                declaredField.setAccessible(true);
                a();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public void a() {
            try {
                if (this.a == null) {
                    Object obj = this.f57i.get(this.f59k);
                    this.a = obj;
                    if (obj != null) {
                        Class<?> cls = obj.getClass();
                        Method declaredMethod = cls.getDeclaredMethod("hide", View.class);
                        this.b = declaredMethod;
                        declaredMethod.setAccessible(true);
                        try {
                            Method declaredMethod2 = cls.getDeclaredMethod("findHiddenNonRemovedView", Integer.TYPE, Integer.TYPE);
                            this.f51c = declaredMethod2;
                            declaredMethod2.setAccessible(true);
                        } catch (NoSuchMethodException unused) {
                            Method declaredMethod3 = cls.getDeclaredMethod("findHiddenNonRemovedView", Integer.TYPE);
                            this.f52d = declaredMethod3;
                            declaredMethod3.setAccessible(true);
                        }
                        Method declaredMethod4 = cls.getDeclaredMethod("isHidden", View.class);
                        this.f53e = declaredMethod4;
                        declaredMethod4.setAccessible(true);
                        Field declaredField = cls.getDeclaredField("mBucket");
                        declaredField.setAccessible(true);
                        Object obj2 = declaredField.get(this.a);
                        this.f55g = obj2;
                        Method declaredMethod5 = obj2.getClass().getDeclaredMethod("clear", Integer.TYPE);
                        this.f56h = declaredMethod5;
                        declaredMethod5.setAccessible(true);
                        Field declaredField2 = cls.getDeclaredField("mHiddenViews");
                        this.f54f = declaredField2;
                        declaredField2.setAccessible(true);
                        this.f58j = (List) this.f54f.get(this.a);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public void b(View view) {
            try {
                a();
                if (this.f58j.indexOf(view) < 0) {
                    this.f60l[0] = view;
                    this.b.invoke(this.a, this.f60l);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* loaded from: classes.dex */
    public static class c {
        public Method a;

        /* renamed from: d  reason: collision with root package name */
        public int f63d;

        /* renamed from: e  reason: collision with root package name */
        public int f64e;

        /* renamed from: f  reason: collision with root package name */
        public int f65f;

        /* renamed from: g  reason: collision with root package name */
        public int f66g;

        /* renamed from: h  reason: collision with root package name */
        public int f67h;

        /* renamed from: i  reason: collision with root package name */
        public int f68i;
        public boolean b = false;

        /* renamed from: c  reason: collision with root package name */
        public boolean f62c = true;

        /* renamed from: j  reason: collision with root package name */
        public int f69j = 0;

        /* renamed from: k  reason: collision with root package name */
        public boolean f70k = false;

        /* renamed from: l  reason: collision with root package name */
        public List<RecyclerView.ViewHolder> f71l = null;

        public c() {
            this.a = null;
            try {
                Method declaredMethod = RecyclerView.ViewHolder.class.getDeclaredMethod("isRemoved", new Class[0]);
                this.a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
                throw new RuntimeException(e2);
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:16:0x003a A[ADDED_TO_REGION] */
        /* JADX WARNING: Removed duplicated region for block: B:19:0x004b A[ADDED_TO_REGION] */
        /* JADX WARNING: Removed duplicated region for block: B:22:0x0051  */
        /* JADX WARNING: Removed duplicated region for block: B:31:0x0055 A[EDGE_INSN: B:31:0x0055->B:24:0x0055 ?: BREAK  , SYNTHETIC] */
        /* JADX WARNING: Removed duplicated region for block: B:36:0x0052 A[ADDED_TO_REGION, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public android.view.View a(androidx.recyclerview.widget.RecyclerView.Recycler r9) {
            /*
                r8 = this;
                java.util.List<androidx.recyclerview.widget.RecyclerView$ViewHolder> r0 = r8.f71l
                if (r0 == 0) goto L_0x0063
                int r9 = r0.size()
                r0 = 0
                r1 = 2147483647(0x7fffffff, float:NaN)
                r2 = 0
                r4 = r0
                r3 = 0
            L_0x000f:
                if (r3 >= r9) goto L_0x0055
                java.util.List<androidx.recyclerview.widget.RecyclerView$ViewHolder> r5 = r8.f71l
                java.lang.Object r5 = r5.get(r3)
                androidx.recyclerview.widget.RecyclerView$ViewHolder r5 = (androidx.recyclerview.widget.RecyclerView.ViewHolder) r5
                boolean r6 = r8.f70k
                if (r6 != 0) goto L_0x003d
                java.lang.reflect.Method r6 = r8.a     // Catch: IllegalAccessException -> 0x0031, InvocationTargetException -> 0x002c
                java.lang.Object[] r7 = new java.lang.Object[r2]     // Catch: IllegalAccessException -> 0x0031, InvocationTargetException -> 0x002c
                java.lang.Object r6 = r6.invoke(r5, r7)     // Catch: IllegalAccessException -> 0x0031, InvocationTargetException -> 0x002c
                java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch: IllegalAccessException -> 0x0031, InvocationTargetException -> 0x002c
                boolean r6 = r6.booleanValue()     // Catch: IllegalAccessException -> 0x0031, InvocationTargetException -> 0x002c
                goto L_0x0036
            L_0x002c:
                r6 = move-exception
                r6.printStackTrace()
                goto L_0x0035
            L_0x0031:
                r6 = move-exception
                r6.printStackTrace()
            L_0x0035:
                r6 = 0
            L_0x0036:
                boolean r7 = r8.f70k
                if (r7 != 0) goto L_0x003d
                if (r6 == 0) goto L_0x003d
                goto L_0x0052
            L_0x003d:
                int r6 = r5.getPosition()
                int r7 = r8.f65f
                int r6 = r6 - r7
                int r7 = r8.f66g
                int r6 = r6 * r7
                if (r6 >= 0) goto L_0x004b
                goto L_0x0052
            L_0x004b:
                if (r6 >= r1) goto L_0x0052
                r4 = r5
                if (r6 != 0) goto L_0x0051
                goto L_0x0055
            L_0x0051:
                r1 = r6
            L_0x0052:
                int r3 = r3 + 1
                goto L_0x000f
            L_0x0055:
                if (r4 == 0) goto L_0x0062
                int r9 = r4.getPosition()
                int r0 = r8.f66g
                int r9 = r9 + r0
                r8.f65f = r9
                android.view.View r0 = r4.itemView
            L_0x0062:
                return r0
            L_0x0063:
                int r0 = r8.f65f
                android.view.View r9 = r9.getViewForPosition(r0)
                int r0 = r8.f65f
                int r1 = r8.f66g
                int r0 = r0 + r1
                r8.f65f = r0
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx.c.a(androidx.recyclerview.widget.RecyclerView$Recycler):android.view.View");
        }
    }

    /* loaded from: classes.dex */
    public static class d {
        public static Method b;

        /* renamed from: c  reason: collision with root package name */
        public static Method f72c;

        /* renamed from: d  reason: collision with root package name */
        public static Method f73d;

        /* renamed from: e  reason: collision with root package name */
        public static Method f74e;

        /* renamed from: f  reason: collision with root package name */
        public static Method f75f;
        public RecyclerView.ViewHolder a;

        static {
            try {
                Method declaredMethod = RecyclerView.ViewHolder.class.getDeclaredMethod("shouldIgnore", new Class[0]);
                b = declaredMethod;
                declaredMethod.setAccessible(true);
                Method declaredMethod2 = RecyclerView.ViewHolder.class.getDeclaredMethod("isInvalid", new Class[0]);
                f72c = declaredMethod2;
                declaredMethod2.setAccessible(true);
                Method declaredMethod3 = RecyclerView.ViewHolder.class.getDeclaredMethod("isRemoved", new Class[0]);
                f73d = declaredMethod3;
                declaredMethod3.setAccessible(true);
                Method declaredMethod4 = RecyclerView.ViewHolder.class.getDeclaredMethod("setFlags", Integer.TYPE, Integer.TYPE);
                f75f = declaredMethod4;
                declaredMethod4.setAccessible(true);
                try {
                    f74e = RecyclerView.ViewHolder.class.getDeclaredMethod("isChanged", new Class[0]);
                } catch (NoSuchMethodException unused) {
                    f74e = RecyclerView.ViewHolder.class.getDeclaredMethod("isUpdated", new Class[0]);
                }
                f74e.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
            }
        }

        public d(RecyclerView.ViewHolder viewHolder) {
            this.a = viewHolder;
        }

        public static void a(RecyclerView.ViewHolder viewHolder, int i2, int i3) {
            try {
                f75f.invoke(viewHolder, Integer.valueOf(i2), Integer.valueOf(i3));
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        }
    }

    public ExposeLinearLayoutManagerEx(Context context) {
        this(context, 1, false);
    }

    public static void attachViewHolder(RecyclerView.LayoutParams layoutParams, RecyclerView.ViewHolder viewHolder) {
        try {
            if (vhField == null) {
                vhField = RecyclerView.LayoutParams.class.getDeclaredField("mViewHolder");
            }
            vhField.setAccessible(true);
            vhField.set(layoutParams, viewHolder);
            if (vhSetFlags == null) {
                Method declaredMethod = RecyclerView.ViewHolder.class.getDeclaredMethod("setFlags", Integer.TYPE, Integer.TYPE);
                vhSetFlags = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            vhSetFlags.invoke(viewHolder, 4, 4);
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (NoSuchFieldException e3) {
            e3.printStackTrace();
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
        }
    }

    private int convertFocusDirectionToLayoutDirectionExpose(int i2) {
        int orientation = getOrientation();
        if (i2 == 1) {
            return -1;
        }
        if (i2 != 2) {
            return i2 != 17 ? i2 != 33 ? i2 != 66 ? (i2 == 130 && orientation == 1) ? 1 : Integer.MIN_VALUE : orientation == 0 ? 1 : Integer.MIN_VALUE : orientation == 1 ? -1 : Integer.MIN_VALUE : orientation == 0 ? -1 : Integer.MIN_VALUE;
        }
        return 1;
    }

    private View findReferenceChildInternal(int i2, int i3, int i4) {
        ensureLayoutStateExpose();
        int i5 = this.mOrientationHelper.i();
        int g2 = this.mOrientationHelper.g();
        int i6 = i3 > i2 ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i2 != i3) {
            View childAt = getChildAt(i2);
            int position = getPosition(childAt);
            if (position >= 0 && position < i4) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else if (this.mOrientationHelper.e(childAt) < g2 && this.mOrientationHelper.b(childAt) >= i5) {
                    return childAt;
                } else {
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i2 += i6;
        }
        return view != null ? view : view2;
    }

    private int fixLayoutEndGapExpose(int i2, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int g2;
        int g3 = this.mOrientationHelper.g() - i2;
        if (g3 <= 0) {
            return 0;
        }
        int i3 = -scrollInternalBy(-g3, recycler, state);
        int i4 = i2 + i3;
        if (!z || (g2 = this.mOrientationHelper.g() - i4) <= 0) {
            return i3;
        }
        this.mOrientationHelper.k(g2);
        return g2 + i3;
    }

    private int fixLayoutStartGapExpose(int i2, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int i3;
        int i4 = i2 - this.mOrientationHelper.i();
        if (i4 <= 0) {
            return 0;
        }
        int i5 = -scrollInternalBy(i4, recycler, state);
        int i6 = i2 + i5;
        if (!z || (i3 = i6 - this.mOrientationHelper.i()) <= 0) {
            return i5;
        }
        this.mOrientationHelper.k(-i3);
        return i5 - i3;
    }

    private View getChildClosestToEndExpose() {
        return getChildAt(this.mShouldReverseLayoutExpose ? 0 : getChildCount() - 1);
    }

    private View getChildClosestToStartExpose() {
        return getChildAt(this.mShouldReverseLayoutExpose ? getChildCount() - 1 : 0);
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0027  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0047  */
    /* JADX WARNING: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean isViewHolderUpdated(androidx.recyclerview.widget.RecyclerView.ViewHolder r5) {
        /*
            com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx$d r0 = new com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx$d
            r0.<init>(r5)
            java.lang.reflect.Method r5 = com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx.d.f72c
            r1 = 0
            r2 = 1
            if (r5 != 0) goto L_0x000c
            goto L_0x0024
        L_0x000c:
            androidx.recyclerview.widget.RecyclerView$ViewHolder r3 = r0.a     // Catch: IllegalAccessException -> 0x0020, InvocationTargetException -> 0x001b
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: IllegalAccessException -> 0x0020, InvocationTargetException -> 0x001b
            java.lang.Object r5 = r5.invoke(r3, r4)     // Catch: IllegalAccessException -> 0x0020, InvocationTargetException -> 0x001b
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch: IllegalAccessException -> 0x0020, InvocationTargetException -> 0x001b
            boolean r5 = r5.booleanValue()     // Catch: IllegalAccessException -> 0x0020, InvocationTargetException -> 0x001b
            goto L_0x0025
        L_0x001b:
            r5 = move-exception
            r5.printStackTrace()
            goto L_0x0024
        L_0x0020:
            r5 = move-exception
            r5.printStackTrace()
        L_0x0024:
            r5 = 1
        L_0x0025:
            if (r5 != 0) goto L_0x0067
            java.lang.reflect.Method r5 = com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx.d.f73d
            if (r5 != 0) goto L_0x002c
            goto L_0x0044
        L_0x002c:
            androidx.recyclerview.widget.RecyclerView$ViewHolder r3 = r0.a     // Catch: IllegalAccessException -> 0x0040, InvocationTargetException -> 0x003b
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: IllegalAccessException -> 0x0040, InvocationTargetException -> 0x003b
            java.lang.Object r5 = r5.invoke(r3, r4)     // Catch: IllegalAccessException -> 0x0040, InvocationTargetException -> 0x003b
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch: IllegalAccessException -> 0x0040, InvocationTargetException -> 0x003b
            boolean r5 = r5.booleanValue()     // Catch: IllegalAccessException -> 0x0040, InvocationTargetException -> 0x003b
            goto L_0x0045
        L_0x003b:
            r5 = move-exception
            r5.printStackTrace()
            goto L_0x0044
        L_0x0040:
            r5 = move-exception
            r5.printStackTrace()
        L_0x0044:
            r5 = 1
        L_0x0045:
            if (r5 != 0) goto L_0x0067
            java.lang.reflect.Method r5 = com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx.d.f74e
            if (r5 != 0) goto L_0x004c
            goto L_0x0064
        L_0x004c:
            androidx.recyclerview.widget.RecyclerView$ViewHolder r0 = r0.a     // Catch: IllegalAccessException -> 0x0060, InvocationTargetException -> 0x005b
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch: IllegalAccessException -> 0x0060, InvocationTargetException -> 0x005b
            java.lang.Object r5 = r5.invoke(r0, r3)     // Catch: IllegalAccessException -> 0x0060, InvocationTargetException -> 0x005b
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch: IllegalAccessException -> 0x0060, InvocationTargetException -> 0x005b
            boolean r5 = r5.booleanValue()     // Catch: IllegalAccessException -> 0x0060, InvocationTargetException -> 0x005b
            goto L_0x0065
        L_0x005b:
            r5 = move-exception
            r5.printStackTrace()
            goto L_0x0064
        L_0x0060:
            r5 = move-exception
            r5.printStackTrace()
        L_0x0064:
            r5 = 1
        L_0x0065:
            if (r5 == 0) goto L_0x0068
        L_0x0067:
            r1 = 1
        L_0x0068:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx.isViewHolderUpdated(androidx.recyclerview.widget.RecyclerView$ViewHolder):boolean");
    }

    private void layoutForPredictiveAnimationsExpose(RecyclerView.Recycler recycler, RecyclerView.State state, int i2, int i3) {
        int i4;
        if (state.willRunPredictiveAnimations() && getChildCount() != 0 && !state.isPreLayout() && supportsPredictiveItemAnimations()) {
            List<RecyclerView.ViewHolder> scrapList = recycler.getScrapList();
            int size = scrapList.size();
            int position = getPosition(getChildAt(0));
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                i4 = -1;
                char c2 = 1;
                if (i5 >= size) {
                    break;
                }
                RecyclerView.ViewHolder viewHolder = scrapList.get(i5);
                if ((viewHolder.getPosition() < position) != this.mShouldReverseLayoutExpose) {
                    c2 = 65535;
                }
                if (c2 == 65535) {
                    i6 += this.mOrientationHelper.c(viewHolder.itemView);
                } else {
                    i7 += this.mOrientationHelper.c(viewHolder.itemView);
                }
                i5++;
            }
            this.mLayoutState.f71l = scrapList;
            if (i6 > 0) {
                updateLayoutStateToFillStartExpose(getPosition(getChildClosestToStartExpose()), i2);
                c cVar = this.mLayoutState;
                cVar.f69j = i6;
                cVar.f64e = 0;
                cVar.f65f += this.mShouldReverseLayoutExpose ? 1 : -1;
                c cVar2 = this.mLayoutState;
                cVar2.b = true;
                fill(recycler, cVar2, state, false);
            }
            if (i7 > 0) {
                updateLayoutStateToFillEndExpose(getPosition(getChildClosestToEndExpose()), i3);
                c cVar3 = this.mLayoutState;
                cVar3.f69j = i7;
                cVar3.f64e = 0;
                int i8 = cVar3.f65f;
                if (!this.mShouldReverseLayoutExpose) {
                    i4 = 1;
                }
                cVar3.f65f = i8 + i4;
                c cVar4 = this.mLayoutState;
                cVar4.b = true;
                fill(recycler, cVar4, state, false);
            }
            this.mLayoutState.f71l = null;
        }
    }

    private void logChildren() {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            getPosition(childAt);
            this.mOrientationHelper.e(childAt);
        }
    }

    private View myFindFirstReferenceChild(int i2) {
        return findReferenceChildInternal(0, getChildCount(), i2);
    }

    private View myFindLastReferenceChild(int i2) {
        return findReferenceChildInternal(getChildCount() - 1, -1, i2);
    }

    private View myFindReferenceChildClosestToEnd(RecyclerView.State state) {
        boolean z = this.mShouldReverseLayoutExpose;
        int itemCount = state.getItemCount();
        return z ? myFindFirstReferenceChild(itemCount) : myFindLastReferenceChild(itemCount);
    }

    private View myFindReferenceChildClosestToStart(RecyclerView.State state) {
        boolean z = this.mShouldReverseLayoutExpose;
        int itemCount = state.getItemCount();
        return z ? myFindLastReferenceChild(itemCount) : myFindFirstReferenceChild(itemCount);
    }

    private void myResolveShouldLayoutReverse() {
        if (getOrientation() == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayoutExpose = getReverseLayout();
        } else {
            this.mShouldReverseLayoutExpose = !getReverseLayout();
        }
    }

    private void recycleByLayoutStateExpose(RecyclerView.Recycler recycler, c cVar) {
        if (cVar.f62c) {
            if (cVar.f67h == -1) {
                recycleViewsFromEndExpose(recycler, cVar.f68i);
            } else {
                recycleViewsFromStartExpose(recycler, cVar.f68i);
            }
        }
    }

    private void recycleViewsFromEndExpose(RecyclerView.Recycler recycler, int i2) {
        int childCount = getChildCount();
        if (i2 >= 0) {
            int f2 = this.mOrientationHelper.f() - i2;
            if (this.mShouldReverseLayoutExpose) {
                for (int i3 = 0; i3 < childCount; i3++) {
                    if (this.mOrientationHelper.e(getChildAt(i3)) - this.recycleOffset < f2) {
                        recycleChildren(recycler, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = childCount - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                if (this.mOrientationHelper.e(getChildAt(i5)) - this.recycleOffset < f2) {
                    recycleChildren(recycler, i4, i5);
                    return;
                }
            }
        }
    }

    private void recycleViewsFromStartExpose(RecyclerView.Recycler recycler, int i2) {
        if (i2 >= 0) {
            int childCount = getChildCount();
            if (this.mShouldReverseLayoutExpose) {
                int i3 = childCount - 1;
                for (int i4 = i3; i4 >= 0; i4--) {
                    if (this.mOrientationHelper.b(getChildAt(i4)) + this.recycleOffset > i2) {
                        recycleChildren(recycler, i3, i4);
                        return;
                    }
                }
                return;
            }
            for (int i5 = 0; i5 < childCount; i5++) {
                if (this.mOrientationHelper.b(getChildAt(i5)) + this.recycleOffset > i2) {
                    recycleChildren(recycler, 0, i5);
                    return;
                }
            }
        }
    }

    private boolean updateAnchorFromChildrenExpose(RecyclerView.State state, a aVar) {
        View view;
        int i2;
        boolean z;
        boolean z2 = false;
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null) {
            if (aVar != null) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) focusedChild.getLayoutParams();
                if (layoutParams.isItemRemoved() || layoutParams.getViewPosition() < 0 || layoutParams.getViewPosition() >= state.getItemCount()) {
                    z = false;
                } else {
                    aVar.b(focusedChild);
                    z = true;
                }
                if (z) {
                    return true;
                }
            } else {
                throw null;
            }
        }
        if (this.mLastStackFromEnd != getStackFromEnd()) {
            return false;
        }
        if (aVar.f49c) {
            view = myFindReferenceChildClosestToEnd(state);
        } else {
            view = myFindReferenceChildClosestToStart(state);
        }
        if (view == null) {
            return false;
        }
        aVar.b(view);
        if (!state.isPreLayout() && supportsPredictiveItemAnimations()) {
            if (this.mOrientationHelper.e(view) >= this.mOrientationHelper.g() || this.mOrientationHelper.b(view) < this.mOrientationHelper.i()) {
                z2 = true;
            }
            if (z2) {
                if (aVar.f49c) {
                    i2 = this.mOrientationHelper.g();
                } else {
                    i2 = this.mOrientationHelper.i();
                }
                aVar.b = i2;
            }
        }
        return true;
    }

    private boolean updateAnchorFromPendingDataExpose(RecyclerView.State state, a aVar) {
        int i2;
        int i3;
        boolean z = false;
        int i4 = 0;
        if (!state.isPreLayout() && (i2 = this.mCurrentPendingScrollPosition) != -1) {
            if (i2 < 0 || i2 >= state.getItemCount()) {
                this.mCurrentPendingScrollPosition = -1;
                this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
            } else {
                aVar.a = this.mCurrentPendingScrollPosition;
                Bundle bundle = this.mCurrentPendingSavedState;
                if (bundle != null && bundle.getInt("AnchorPosition") >= 0) {
                    boolean z2 = this.mCurrentPendingSavedState.getBoolean("AnchorLayoutFromEnd");
                    aVar.f49c = z2;
                    if (z2) {
                        aVar.b = this.mOrientationHelper.g() - this.mCurrentPendingSavedState.getInt("AnchorOffset");
                    } else {
                        aVar.b = this.mCurrentPendingSavedState.getInt("AnchorOffset") + this.mOrientationHelper.i();
                    }
                    return true;
                } else if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                    View findViewByPosition = findViewByPosition(this.mCurrentPendingScrollPosition);
                    if (findViewByPosition == null) {
                        if (getChildCount() > 0) {
                            if ((this.mCurrentPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayoutExpose) {
                                z = true;
                            }
                            aVar.f49c = z;
                        }
                        aVar.a();
                    } else if (this.mOrientationHelper.c(findViewByPosition) > this.mOrientationHelper.j()) {
                        aVar.a();
                        return true;
                    } else if (this.mOrientationHelper.e(findViewByPosition) - this.mOrientationHelper.i() < 0) {
                        aVar.b = this.mOrientationHelper.i();
                        aVar.f49c = false;
                        return true;
                    } else if (this.mOrientationHelper.g() - this.mOrientationHelper.b(findViewByPosition) < 0) {
                        aVar.b = this.mOrientationHelper.g();
                        aVar.f49c = true;
                        return true;
                    } else {
                        if (aVar.f49c) {
                            int b2 = this.mOrientationHelper.b(findViewByPosition);
                            i iVar = this.mOrientationHelper;
                            if (Integer.MIN_VALUE != iVar.b) {
                                i4 = iVar.j() - iVar.b;
                            }
                            i3 = b2 + i4;
                        } else {
                            i3 = this.mOrientationHelper.e(findViewByPosition);
                        }
                        aVar.b = i3;
                    }
                    return true;
                } else {
                    boolean z3 = this.mShouldReverseLayoutExpose;
                    aVar.f49c = z3;
                    if (z3) {
                        aVar.b = this.mOrientationHelper.g() - this.mPendingScrollPositionOffset;
                    } else {
                        aVar.b = this.mOrientationHelper.i() + this.mPendingScrollPositionOffset;
                    }
                    return true;
                }
            }
        }
        return false;
    }

    private void updateAnchorInfoForLayoutExpose(RecyclerView.State state, a aVar) {
        if (!updateAnchorFromPendingDataExpose(state, aVar) && !updateAnchorFromChildrenExpose(state, aVar)) {
            aVar.a();
            aVar.a = getStackFromEnd() ? state.getItemCount() - 1 : 0;
        }
    }

    private void updateLayoutStateToFillEndExpose(a aVar) {
        updateLayoutStateToFillEndExpose(aVar.a, aVar.b);
    }

    private void updateLayoutStateToFillStartExpose(a aVar) {
        updateLayoutStateToFillStartExpose(aVar.a, aVar.b);
    }

    private void validateChildOrderExpose() {
        getChildCount();
        boolean z = true;
        if (getChildCount() >= 1) {
            int position = getPosition(getChildAt(0));
            int e2 = this.mOrientationHelper.e(getChildAt(0));
            if (this.mShouldReverseLayoutExpose) {
                for (int i2 = 1; i2 < getChildCount(); i2++) {
                    View childAt = getChildAt(i2);
                    int position2 = getPosition(childAt);
                    int e3 = this.mOrientationHelper.e(childAt);
                    if (position2 < position) {
                        logChildren();
                        StringBuilder o = f.b.a.a.a.o("detected invalid position. loc invalid? ");
                        if (e3 >= e2) {
                            z = false;
                        }
                        o.append(z);
                        throw new RuntimeException(o.toString());
                    } else if (e3 > e2) {
                        logChildren();
                        throw new RuntimeException("detected invalid location");
                    }
                }
                return;
            }
            for (int i3 = 1; i3 < getChildCount(); i3++) {
                View childAt2 = getChildAt(i3);
                int position3 = getPosition(childAt2);
                int e4 = this.mOrientationHelper.e(childAt2);
                if (position3 < position) {
                    logChildren();
                    StringBuilder o2 = f.b.a.a.a.o("detected invalid position. loc invalid? ");
                    if (e4 >= e2) {
                        z = false;
                    }
                    o2.append(z);
                    throw new RuntimeException(o2.toString());
                } else if (e4 < e2) {
                    logChildren();
                    throw new RuntimeException("detected invalid location");
                }
            }
        }
    }

    public void addHiddenView(View view, boolean z) {
        addView(view, z ? 0 : -1);
        this.mChildHelperWrapper.b(view);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mCurrentPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public int computeAlignOffset(int i2, boolean z, boolean z2) {
        return 0;
    }

    public int computeAlignOffset(View view, boolean z, boolean z2) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i2) {
        if (getChildCount() == 0) {
            return null;
        }
        boolean z = false;
        int i3 = 1;
        if (i2 < getPosition(getChildAt(0))) {
            z = true;
        }
        if (z != this.mShouldReverseLayoutExpose) {
            i3 = -1;
        }
        if (getOrientation() == 0) {
            return new PointF((float) i3, 0.0f);
        }
        return new PointF(0.0f, (float) i3);
    }

    public void ensureLayoutStateExpose() {
        if (this.mLayoutState == null) {
            this.mLayoutState = new c();
        }
        if (this.mOrientationHelper == null) {
            this.mOrientationHelper = i.a(this, getOrientation());
        }
        try {
            this.mEnsureLayoutStateMethod.invoke(this, this.emptyArgs);
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    public int fill(RecyclerView.Recycler recycler, c cVar, RecyclerView.State state, boolean z) {
        int i2 = cVar.f64e;
        int i3 = cVar.f68i;
        if (i3 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                cVar.f68i = i3 + i2;
            }
            recycleByLayoutStateExpose(recycler, cVar);
        }
        int i4 = cVar.f64e + cVar.f69j + (cVar.f67h == -1 ? 0 : this.recycleOffset);
        while (i4 > 0) {
            int i5 = cVar.f65f;
            if (!(i5 >= 0 && i5 < state.getItemCount())) {
                break;
            }
            h hVar = this.layoutChunkResultCache;
            hVar.a = 0;
            hVar.b = false;
            hVar.f3315c = false;
            hVar.f3316d = false;
            layoutChunk(recycler, state, cVar, hVar);
            h hVar2 = this.layoutChunkResultCache;
            if (!hVar2.b) {
                cVar.f63d = (hVar2.a * cVar.f67h) + cVar.f63d;
                if (!hVar2.f3315c || this.mLayoutState.f71l != null || !state.isPreLayout()) {
                    int i6 = cVar.f64e;
                    int i7 = this.layoutChunkResultCache.a;
                    cVar.f64e = i6 - i7;
                    i4 -= i7;
                }
                int i8 = cVar.f68i;
                if (i8 != Integer.MIN_VALUE) {
                    int i9 = i8 + this.layoutChunkResultCache.a;
                    cVar.f68i = i9;
                    int i10 = cVar.f64e;
                    if (i10 < 0) {
                        cVar.f68i = i9 + i10;
                    }
                    recycleByLayoutStateExpose(recycler, cVar);
                }
                if (z && this.layoutChunkResultCache.f3316d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - cVar.f64e;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public int findFirstVisibleItemPosition() {
        ensureLayoutStateExpose();
        return super.findFirstVisibleItemPosition();
    }

    public View findHiddenView(int i2) {
        View view;
        b bVar = this.mChildHelperWrapper;
        if (bVar != null) {
            try {
                bVar.a();
                if (bVar.f51c != null) {
                    view = (View) bVar.f51c.invoke(bVar.a, Integer.valueOf(i2), -1);
                } else if (bVar.f52d == null) {
                    return null;
                } else {
                    view = (View) bVar.f52d.invoke(bVar.a, Integer.valueOf(i2));
                }
                return view;
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
                return null;
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
                return null;
            } catch (Exception e4) {
                e4.printStackTrace();
                return null;
            }
        } else {
            throw null;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public int findLastVisibleItemPosition() {
        ensureLayoutStateExpose();
        try {
            return super.findLastVisibleItemPosition();
        } catch (Exception e2) {
            getItemCount();
            getChildCount();
            String str = "child: " + getChildAt(getChildCount() - 1);
            this.mRecyclerView.getChildCount();
            StringBuilder sb = new StringBuilder();
            sb.append("RV child: ");
            RecyclerView recyclerView = this.mRecyclerView;
            sb.append(recyclerView.getChildAt(recyclerView.getChildCount() - 1));
            sb.toString();
            throw e2;
        }
    }

    public void hideView(View view) {
        this.mChildHelperWrapper.b(view);
    }

    @Override // f.a.a.a.c
    public boolean isEnableMarginOverLap() {
        return false;
    }

    public boolean isHidden(View view) {
        b bVar = this.mChildHelperWrapper;
        if (bVar != null) {
            try {
                bVar.a();
                bVar.f60l[0] = view;
                return ((Boolean) bVar.f53e.invoke(bVar.a, bVar.f60l)).booleanValue();
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
                return false;
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
                return false;
            } catch (Exception e4) {
                e4.printStackTrace();
                return false;
            }
        } else {
            throw null;
        }
    }

    public void layoutChunk(RecyclerView.Recycler recycler, RecyclerView.State state, c cVar, h hVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        View a2 = cVar.a(recycler);
        if (a2 == null) {
            hVar.b = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) a2.getLayoutParams();
        if (cVar.f71l == null) {
            if (this.mShouldReverseLayoutExpose == (cVar.f67h == -1)) {
                addView(a2);
            } else {
                addView(a2, 0);
            }
        } else {
            if (this.mShouldReverseLayoutExpose == (cVar.f67h == -1)) {
                addDisappearingView(a2);
            } else {
                addDisappearingView(a2, 0);
            }
        }
        measureChildWithMargins(a2, 0, 0);
        hVar.a = this.mOrientationHelper.c(a2);
        if (getOrientation() == 1) {
            if (isLayoutRTL()) {
                i5 = getWidth() - getPaddingRight();
                i3 = i5 - this.mOrientationHelper.d(a2);
            } else {
                i3 = getPaddingLeft();
                i5 = this.mOrientationHelper.d(a2) + i3;
            }
            if (cVar.f67h == -1) {
                i2 = cVar.f63d;
                i4 = i2 - hVar.a;
            } else {
                i4 = cVar.f63d;
                i2 = hVar.a + i4;
            }
        } else {
            int paddingTop = getPaddingTop();
            int d2 = this.mOrientationHelper.d(a2) + paddingTop;
            if (cVar.f67h == -1) {
                int i6 = cVar.f63d;
                i3 = i6 - hVar.a;
                i5 = i6;
                i2 = d2;
                i4 = paddingTop;
            } else {
                int i7 = cVar.f63d;
                i5 = hVar.a + i7;
                i3 = i7;
                i2 = d2;
                i4 = paddingTop;
            }
        }
        layoutDecorated(a2, i3 + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + i4, i5 - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, i2 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            hVar.f3315c = true;
        }
        hVar.f3316d = a2.isFocusable();
    }

    public void onAnchorReady(RecyclerView.State state, a aVar) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.mRecyclerView = recyclerView;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        this.mRecyclerView = null;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View onFocusSearchFailed(View view, int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int convertFocusDirectionToLayoutDirectionExpose;
        View view2;
        View view3;
        myResolveShouldLayoutReverse();
        if (getChildCount() == 0 || (convertFocusDirectionToLayoutDirectionExpose = convertFocusDirectionToLayoutDirectionExpose(i2)) == Integer.MIN_VALUE) {
            return null;
        }
        if (convertFocusDirectionToLayoutDirectionExpose == -1) {
            view2 = myFindReferenceChildClosestToStart(state);
        } else {
            view2 = myFindReferenceChildClosestToEnd(state);
        }
        if (view2 == null) {
            return null;
        }
        ensureLayoutStateExpose();
        updateLayoutStateExpose(convertFocusDirectionToLayoutDirectionExpose, (int) (((float) this.mOrientationHelper.j()) * 0.33f), false, state);
        c cVar = this.mLayoutState;
        cVar.f68i = Integer.MIN_VALUE;
        cVar.f62c = false;
        cVar.b = false;
        fill(recycler, cVar, state, true);
        if (convertFocusDirectionToLayoutDirectionExpose == -1) {
            view3 = getChildClosestToStartExpose();
        } else {
            view3 = getChildClosestToEndExpose();
        }
        if (view3 == view2 || !view3.isFocusable()) {
            return null;
        }
        return view3;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        View findViewByPosition;
        int i9;
        int i10;
        Bundle bundle = this.mCurrentPendingSavedState;
        if (bundle != null && bundle.getInt("AnchorPosition") >= 0) {
            this.mCurrentPendingScrollPosition = this.mCurrentPendingSavedState.getInt("AnchorPosition");
        }
        ensureLayoutStateExpose();
        this.mLayoutState.f62c = false;
        myResolveShouldLayoutReverse();
        a aVar = this.mAnchorInfo;
        aVar.a = -1;
        aVar.b = Integer.MIN_VALUE;
        aVar.f49c = false;
        aVar.f49c = this.mShouldReverseLayoutExpose ^ getStackFromEnd();
        updateAnchorInfoForLayoutExpose(state, this.mAnchorInfo);
        int extraLayoutSpace = getExtraLayoutSpace(state);
        if ((state.getTargetScrollPosition() < this.mAnchorInfo.a) == this.mShouldReverseLayoutExpose) {
            i2 = extraLayoutSpace;
            extraLayoutSpace = 0;
        } else {
            i2 = 0;
        }
        int i11 = this.mOrientationHelper.i() + extraLayoutSpace;
        int h2 = this.mOrientationHelper.h() + i2;
        if (!(!state.isPreLayout() || (i8 = this.mCurrentPendingScrollPosition) == -1 || this.mPendingScrollPositionOffset == Integer.MIN_VALUE || (findViewByPosition = findViewByPosition(i8)) == null)) {
            if (this.mShouldReverseLayoutExpose) {
                i9 = this.mOrientationHelper.g() - this.mOrientationHelper.b(findViewByPosition);
                i10 = this.mPendingScrollPositionOffset;
            } else {
                i10 = this.mOrientationHelper.e(findViewByPosition) - this.mOrientationHelper.i();
                i9 = this.mPendingScrollPositionOffset;
            }
            int i12 = i9 - i10;
            if (i12 > 0) {
                i11 += i12;
            } else {
                h2 -= i12;
            }
        }
        onAnchorReady(state, this.mAnchorInfo);
        detachAndScrapAttachedViews(recycler);
        this.mLayoutState.f70k = state.isPreLayout();
        this.mLayoutState.b = true;
        a aVar2 = this.mAnchorInfo;
        if (aVar2.f49c) {
            updateLayoutStateToFillStartExpose(aVar2);
            c cVar = this.mLayoutState;
            cVar.f69j = i11;
            fill(recycler, cVar, state, false);
            c cVar2 = this.mLayoutState;
            i3 = cVar2.f63d;
            int i13 = cVar2.f64e;
            if (i13 > 0) {
                h2 += i13;
            }
            updateLayoutStateToFillEndExpose(this.mAnchorInfo);
            c cVar3 = this.mLayoutState;
            cVar3.f69j = h2;
            cVar3.f65f += cVar3.f66g;
            fill(recycler, cVar3, state, false);
            i4 = this.mLayoutState.f63d;
        } else {
            updateLayoutStateToFillEndExpose(aVar2);
            c cVar4 = this.mLayoutState;
            cVar4.f69j = h2;
            fill(recycler, cVar4, state, false);
            c cVar5 = this.mLayoutState;
            int i14 = cVar5.f63d;
            int i15 = cVar5.f64e;
            if (i15 > 0) {
                i11 += i15;
            }
            updateLayoutStateToFillStartExpose(this.mAnchorInfo);
            c cVar6 = this.mLayoutState;
            cVar6.f69j = i11;
            cVar6.f65f += cVar6.f66g;
            fill(recycler, cVar6, state, false);
            i3 = this.mLayoutState.f63d;
            i4 = i14;
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayoutExpose ^ getStackFromEnd()) {
                int fixLayoutEndGapExpose = fixLayoutEndGapExpose(i4, recycler, state, true);
                i5 = i3 + fixLayoutEndGapExpose;
                i7 = i4 + fixLayoutEndGapExpose;
                i6 = fixLayoutStartGapExpose(i5, recycler, state, false);
            } else {
                int fixLayoutStartGapExpose = fixLayoutStartGapExpose(i3, recycler, state, true);
                i5 = i3 + fixLayoutStartGapExpose;
                i7 = i4 + fixLayoutStartGapExpose;
                i6 = fixLayoutEndGapExpose(i7, recycler, state, false);
            }
            i3 = i5 + i6;
            i4 = i7 + i6;
        }
        layoutForPredictiveAnimationsExpose(recycler, state, i3, i4);
        if (!state.isPreLayout()) {
            this.mCurrentPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
            i iVar = this.mOrientationHelper;
            iVar.b = iVar.j();
        }
        this.mLastStackFromEnd = getStackFromEnd();
        this.mCurrentPendingSavedState = null;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            this.mCurrentPendingSavedState = (Bundle) parcelable;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        if (this.mCurrentPendingSavedState != null) {
            return new Bundle(this.mCurrentPendingSavedState);
        }
        Bundle bundle = new Bundle();
        if (getChildCount() > 0) {
            boolean z = this.mLastStackFromEnd ^ this.mShouldReverseLayoutExpose;
            bundle.putBoolean("AnchorLayoutFromEnd", z);
            if (z) {
                View childClosestToEndExpose = getChildClosestToEndExpose();
                bundle.putInt("AnchorOffset", this.mOrientationHelper.g() - this.mOrientationHelper.b(childClosestToEndExpose));
                bundle.putInt("AnchorPosition", getPosition(childClosestToEndExpose));
            } else {
                View childClosestToStartExpose = getChildClosestToStartExpose();
                bundle.putInt("AnchorPosition", getPosition(childClosestToStartExpose));
                bundle.putInt("AnchorOffset", this.mOrientationHelper.e(childClosestToStartExpose) - this.mOrientationHelper.i());
            }
        } else {
            bundle.putInt("AnchorPosition", -1);
        }
        return bundle;
    }

    public void recycleChildren(RecyclerView.Recycler recycler, int i2, int i3) {
        if (i2 != i3) {
            if (i3 > i2) {
                for (int i4 = i3 - 1; i4 >= i2; i4--) {
                    removeAndRecycleViewAt(i4, recycler);
                }
                return;
            }
            while (i2 > i3) {
                removeAndRecycleViewAt(i2, recycler);
                i2--;
            }
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getOrientation() == 1) {
            return 0;
        }
        return scrollInternalBy(i2, recycler, state);
    }

    public int scrollInternalBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i2 == 0) {
            return 0;
        }
        this.mLayoutState.f62c = true;
        ensureLayoutStateExpose();
        int i3 = i2 > 0 ? 1 : -1;
        int abs = Math.abs(i2);
        updateLayoutStateExpose(i3, abs, true, state);
        c cVar = this.mLayoutState;
        int i4 = cVar.f68i;
        cVar.b = false;
        int fill = fill(recycler, cVar, state, false) + i4;
        if (fill < 0) {
            return 0;
        }
        if (abs > fill) {
            i2 = i3 * fill;
        }
        this.mOrientationHelper.k(-i2);
        return i2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i2) {
        this.mCurrentPendingScrollPosition = i2;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        Bundle bundle = this.mCurrentPendingSavedState;
        if (bundle != null) {
            bundle.putInt("AnchorPosition", -1);
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void scrollToPositionWithOffset(int i2, int i3) {
        this.mCurrentPendingScrollPosition = i2;
        this.mPendingScrollPositionOffset = i3;
        Bundle bundle = this.mCurrentPendingSavedState;
        if (bundle != null) {
            bundle.putInt("AnchorPosition", -1);
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getOrientation() == 0) {
            return 0;
        }
        return scrollInternalBy(i2, recycler, state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setOrientation(int i2) {
        super.setOrientation(i2);
        this.mOrientationHelper = null;
    }

    public void setRecycleOffset(int i2) {
        this.recycleOffset = i2;
    }

    @Override // f.a.a.a.c
    public void showView(View view) {
        b bVar = this.mChildHelperWrapper;
        if (bVar != null) {
            try {
                bVar.a();
                bVar.f60l[0] = Integer.valueOf(ExposeLinearLayoutManagerEx.this.mRecyclerView.indexOfChild(view));
                bVar.f56h.invoke(bVar.f55g, bVar.f60l);
                if (bVar.f58j != null) {
                    bVar.f58j.remove(view);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else {
            throw null;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mCurrentPendingSavedState == null && this.mLastStackFromEnd == getStackFromEnd();
    }

    public void updateLayoutStateExpose(int i2, int i3, boolean z, RecyclerView.State state) {
        int i4;
        this.mLayoutState.f69j = getExtraLayoutSpace(state);
        c cVar = this.mLayoutState;
        cVar.f67h = i2;
        int i5 = -1;
        if (i2 == 1) {
            cVar.f69j = this.mOrientationHelper.h() + cVar.f69j;
            View childClosestToEndExpose = getChildClosestToEndExpose();
            c cVar2 = this.mLayoutState;
            if (!this.mShouldReverseLayoutExpose) {
                i5 = 1;
            }
            cVar2.f66g = i5;
            c cVar3 = this.mLayoutState;
            int position = getPosition(childClosestToEndExpose);
            c cVar4 = this.mLayoutState;
            cVar3.f65f = position + cVar4.f66g;
            cVar4.f63d = computeAlignOffset(childClosestToEndExpose, true, false) + this.mOrientationHelper.b(childClosestToEndExpose);
            i4 = this.mLayoutState.f63d - this.mOrientationHelper.g();
        } else {
            View childClosestToStartExpose = getChildClosestToStartExpose();
            c cVar5 = this.mLayoutState;
            cVar5.f69j = this.mOrientationHelper.i() + cVar5.f69j;
            c cVar6 = this.mLayoutState;
            if (this.mShouldReverseLayoutExpose) {
                i5 = 1;
            }
            cVar6.f66g = i5;
            c cVar7 = this.mLayoutState;
            int position2 = getPosition(childClosestToStartExpose);
            c cVar8 = this.mLayoutState;
            cVar7.f65f = position2 + cVar8.f66g;
            cVar8.f63d = computeAlignOffset(childClosestToStartExpose, false, false) + this.mOrientationHelper.e(childClosestToStartExpose);
            i4 = (-this.mLayoutState.f63d) + this.mOrientationHelper.i();
        }
        c cVar9 = this.mLayoutState;
        cVar9.f64e = i3;
        if (z) {
            cVar9.f64e = i3 - i4;
        }
        this.mLayoutState.f68i = i4;
    }

    public ExposeLinearLayoutManagerEx(Context context, int i2, boolean z) {
        super(context, i2, z);
        this.mShouldReverseLayoutExpose = false;
        this.mCurrentPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mCurrentPendingSavedState = null;
        this.emptyArgs = new Object[0];
        this.layoutChunkResultCache = new h();
        this.mAnchorInfo = new a();
        setOrientation(i2);
        setReverseLayout(z);
        this.mChildHelperWrapper = new b(this);
        try {
            Method declaredMethod = LinearLayoutManager.class.getDeclaredMethod("ensureLayoutState", new Class[0]);
            this.mEnsureLayoutStateMethod = declaredMethod;
            declaredMethod.setAccessible(true);
            try {
                Method declaredMethod2 = RecyclerView.LayoutManager.class.getDeclaredMethod("setItemPrefetchEnabled", Boolean.TYPE);
                if (declaredMethod2 != null) {
                    declaredMethod2.invoke(this, Boolean.FALSE);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            throw new RuntimeException(e2);
        }
    }

    private void updateLayoutStateToFillEndExpose(int i2, int i3) {
        this.mLayoutState.f64e = this.mOrientationHelper.g() - i3;
        this.mLayoutState.f66g = this.mShouldReverseLayoutExpose ? -1 : 1;
        c cVar = this.mLayoutState;
        cVar.f65f = i2;
        cVar.f67h = 1;
        cVar.f63d = i3;
        cVar.f68i = Integer.MIN_VALUE;
    }

    private void updateLayoutStateToFillStartExpose(int i2, int i3) {
        this.mLayoutState.f64e = i3 - this.mOrientationHelper.i();
        c cVar = this.mLayoutState;
        cVar.f65f = i2;
        cVar.f66g = this.mShouldReverseLayoutExpose ? 1 : -1;
        c cVar2 = this.mLayoutState;
        cVar2.f67h = -1;
        cVar2.f63d = i3;
        cVar2.f68i = Integer.MIN_VALUE;
    }
}
