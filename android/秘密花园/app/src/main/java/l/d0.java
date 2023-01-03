package l;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* compiled from: Platform.java */
/* loaded from: classes2.dex */
public class d0 {
    public static final d0 b;
    public final boolean a;

    /* compiled from: Platform.java */
    /* loaded from: classes2.dex */
    public static final class a extends d0 {

        /* compiled from: Platform.java */
        /* renamed from: l.d0$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class ExecutorC0116a implements Executor {
            public final Handler a = new Handler(Looper.getMainLooper());

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.a.post(runnable);
            }
        }

        public a() {
            super(Build.VERSION.SDK_INT >= 24);
        }

        @Override // l.d0
        public Executor a() {
            return new ExecutorC0116a();
        }
    }

    static {
        d0 d0Var;
        try {
            Class.forName("android.os.Build");
            d0Var = new a();
        } catch (ClassNotFoundException unused) {
            d0Var = new d0(true);
        }
        b = d0Var;
    }

    public d0(boolean z) {
        this.a = z;
    }

    public Executor a() {
        return null;
    }
}
