package f.d.a.s.h;

import android.content.Context;
import android.graphics.Point;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: ViewTarget.java */
@Deprecated
/* loaded from: classes.dex */
public abstract class i<T extends View, Z> extends f.d.a.s.h.a<Z> {

    /* renamed from: c  reason: collision with root package name */
    public static int f3779c = f.d.a.g.glide_custom_view_target_tag;
    public final T a;
    public final a b;

    /* compiled from: ViewTarget.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class a {
        @Nullable
        @VisibleForTesting

        /* renamed from: d  reason: collision with root package name */
        public static Integer f3780d;
        public final View a;
        public final List<g> b = new ArrayList();
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public ViewTreeObserver$OnPreDrawListenerC0052a f3781c;

        /* compiled from: ViewTarget.java */
        /* renamed from: f.d.a.s.h.i$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class ViewTreeObserver$OnPreDrawListenerC0052a implements ViewTreeObserver.OnPreDrawListener {
            public final WeakReference<a> a;

            public ViewTreeObserver$OnPreDrawListenerC0052a(@NonNull a aVar) {
                this.a = new WeakReference<>(aVar);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    String str = "OnGlobalLayoutListener called attachStateListener=" + this;
                }
                a aVar = this.a.get();
                if (aVar == null || aVar.b.isEmpty()) {
                    return true;
                }
                int d2 = aVar.d();
                int c2 = aVar.c();
                if (aVar.e(d2, c2)) {
                    Iterator it = new ArrayList(aVar.b).iterator();
                    while (it.hasNext()) {
                        ((g) it.next()).e(d2, c2);
                    }
                    aVar.a();
                    return true;
                }
                return true;
            }
        }

        public a(@NonNull View view) {
            this.a = view;
        }

        public void a() {
            ViewTreeObserver viewTreeObserver = this.a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f3781c);
            }
            this.f3781c = null;
            this.b.clear();
        }

        public final int b(int i2, int i3, int i4) {
            int i5 = i3 - i4;
            if (i5 > 0) {
                return i5;
            }
            int i6 = i2 - i4;
            if (i6 > 0) {
                return i6;
            }
            if (this.a.isLayoutRequested() || i3 != -2) {
                return 0;
            }
            Log.isLoggable("ViewTarget", 4);
            Context context = this.a.getContext();
            if (f3780d == null) {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                c.a.a.b.g.h.s(windowManager, "Argument must not be null");
                Display defaultDisplay = windowManager.getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f3780d = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f3780d.intValue();
        }

        public final int c() {
            int paddingBottom = this.a.getPaddingBottom() + this.a.getPaddingTop();
            ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
            return b(this.a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingBottom);
        }

        public final int d() {
            int paddingRight = this.a.getPaddingRight() + this.a.getPaddingLeft();
            ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
            return b(this.a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        }

        public final boolean e(int i2, int i3) {
            if (i2 > 0 || i2 == Integer.MIN_VALUE) {
                if (i3 > 0 || i3 == Integer.MIN_VALUE) {
                    return true;
                }
            }
            return false;
        }
    }

    public i(@NonNull T t) {
        c.a.a.b.g.h.s(t, "Argument must not be null");
        this.a = t;
        this.b = new a(t);
    }

    @Override // f.d.a.s.h.h
    @CallSuper
    public void a(@NonNull g gVar) {
        this.b.b.remove(gVar);
    }

    @Override // f.d.a.s.h.h
    @Nullable
    public f.d.a.s.b f() {
        Object tag = this.a.getTag(f3779c);
        if (tag != null) {
            if (tag instanceof f.d.a.s.b) {
                return (f.d.a.s.b) tag;
            }
            throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
        }
        return null;
    }

    @Override // f.d.a.s.h.h
    @CallSuper
    public void h(@NonNull g gVar) {
        a aVar = this.b;
        int d2 = aVar.d();
        int c2 = aVar.c();
        if (aVar.e(d2, c2)) {
            gVar.e(d2, c2);
            return;
        }
        if (!aVar.b.contains(gVar)) {
            aVar.b.add(gVar);
        }
        if (aVar.f3781c == null) {
            ViewTreeObserver viewTreeObserver = aVar.a.getViewTreeObserver();
            a.ViewTreeObserver$OnPreDrawListenerC0052a viewTreeObserver$OnPreDrawListenerC0052a = new a.ViewTreeObserver$OnPreDrawListenerC0052a(aVar);
            aVar.f3781c = viewTreeObserver$OnPreDrawListenerC0052a;
            viewTreeObserver.addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC0052a);
        }
    }

    @Override // f.d.a.s.h.h
    public void i(@Nullable f.d.a.s.b bVar) {
        this.a.setTag(f3779c, bVar);
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("Target for: ");
        o.append(this.a);
        return o.toString();
    }
}
