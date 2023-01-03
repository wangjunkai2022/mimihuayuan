package m.m;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* compiled from: CompositeException.java */
/* loaded from: classes2.dex */
public final class a extends RuntimeException {
    public final List<Throwable> a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public Throwable f7232c;

    /* compiled from: CompositeException.java */
    /* renamed from: m.m.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0119a extends RuntimeException {
        @Override // java.lang.Throwable
        public String getMessage() {
            return "Chain of Causes for CompositeException In Order Received =>";
        }
    }

    /* compiled from: CompositeException.java */
    /* loaded from: classes2.dex */
    public static abstract class b {
        public abstract Object a();

        public abstract void b(Object obj);
    }

    /* compiled from: CompositeException.java */
    /* loaded from: classes2.dex */
    public static final class c extends b {
        public final PrintStream a;

        public c(PrintStream printStream) {
            this.a = printStream;
        }

        @Override // m.m.a.b
        public Object a() {
            return this.a;
        }

        @Override // m.m.a.b
        public void b(Object obj) {
        }
    }

    /* compiled from: CompositeException.java */
    /* loaded from: classes2.dex */
    public static final class d extends b {
        public final PrintWriter a;

        public d(PrintWriter printWriter) {
            this.a = printWriter;
        }

        @Override // m.m.a.b
        public Object a() {
            return this.a;
        }

        @Override // m.m.a.b
        public void b(Object obj) {
            this.a.println(obj);
        }
    }

    public a(Collection<? extends Throwable> collection) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            for (Throwable th : collection) {
                if (th instanceof a) {
                    linkedHashSet.addAll(((a) th).a);
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException());
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException());
        }
        arrayList.addAll(linkedHashSet);
        this.a = Collections.unmodifiableList(arrayList);
        this.b = this.a.size() + " exceptions occurred. ";
    }

    public final void a(StringBuilder sb, Throwable th, String str) {
        sb.append(str);
        sb.append(th);
        sb.append('\n');
        StackTraceElement[] stackTrace = th.getStackTrace();
        for (StackTraceElement stackTraceElement : stackTrace) {
            sb.append("\t\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        if (th.getCause() != null) {
            sb.append("\tCaused by: ");
            a(sb, th.getCause(), "");
        }
    }

    public final void b(b bVar) {
        StringBuilder sb = new StringBuilder(128);
        sb.append(this);
        sb.append('\n');
        StackTraceElement[] stackTrace = getStackTrace();
        for (StackTraceElement stackTraceElement : stackTrace) {
            sb.append("\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        int i2 = 1;
        for (Throwable th : this.a) {
            sb.append("  ComposedException ");
            sb.append(i2);
            sb.append(" :\n");
            a(sb, th, "\t");
            i2++;
        }
        synchronized (bVar.a()) {
            bVar.b(sb.toString());
        }
    }

    @Override // java.lang.Throwable
    public synchronized Throwable getCause() {
        if (this.f7232c == null) {
            C0119a aVar = new C0119a();
            HashSet hashSet = new HashSet();
            Iterator<Throwable> it = this.a.iterator();
            Throwable th = aVar;
            while (it.hasNext()) {
                Throwable next = it.next();
                if (!hashSet.contains(next)) {
                    hashSet.add(next);
                    ArrayList arrayList = new ArrayList();
                    Throwable cause = next.getCause();
                    if (cause != null && cause != next) {
                        while (true) {
                            arrayList.add(cause);
                            Throwable cause2 = cause.getCause();
                            if (cause2 == null || cause2 == cause) {
                                break;
                            }
                            cause = cause.getCause();
                        }
                    }
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        Throwable th2 = (Throwable) it2.next();
                        if (hashSet.contains(th2)) {
                            next = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                        } else {
                            hashSet.add(th2);
                        }
                    }
                    try {
                        th.initCause(next);
                    } catch (Throwable unused) {
                    }
                    Throwable cause3 = th.getCause();
                    if (!(cause3 == null || cause3 == th)) {
                        while (true) {
                            Throwable cause4 = cause3.getCause();
                            if (cause4 == null || cause4 == cause3) {
                                break;
                            }
                            cause3 = cause3.getCause();
                        }
                        th = cause3;
                    }
                }
            }
            this.f7232c = aVar;
        }
        return this.f7232c;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.b;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        b(new c(printStream));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        b(new d(printWriter));
    }

    public a(Throwable... thArr) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        for (Throwable th : thArr) {
            if (th instanceof a) {
                linkedHashSet.addAll(((a) th).a);
            } else if (th != null) {
                linkedHashSet.add(th);
            } else {
                linkedHashSet.add(new NullPointerException());
            }
        }
        arrayList.addAll(linkedHashSet);
        this.a = Collections.unmodifiableList(arrayList);
        this.b = this.a.size() + " exceptions occurred. ";
    }
}
