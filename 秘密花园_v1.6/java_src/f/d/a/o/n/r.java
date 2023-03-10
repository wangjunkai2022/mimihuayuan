package f.d.a.o.n;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* compiled from: GlideException.java */
/* loaded from: classes.dex */
public final class r extends Exception {

    /* renamed from: f  reason: collision with root package name */
    public static final StackTraceElement[] f3702f = new StackTraceElement[0];
    public final List<Throwable> a;
    public f.d.a.o.f b;

    /* renamed from: c  reason: collision with root package name */
    public f.d.a.o.a f3703c;

    /* renamed from: d  reason: collision with root package name */
    public Class<?> f3704d;

    /* renamed from: e  reason: collision with root package name */
    public String f3705e;

    public r(String str) {
        List<Throwable> emptyList = Collections.emptyList();
        this.f3705e = str;
        setStackTrace(f3702f);
        this.a = emptyList;
    }

    public static void b(List<Throwable> list, Appendable appendable) {
        try {
            c(list, appendable);
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static void c(List<Throwable> list, Appendable appendable) throws IOException {
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + 1;
            appendable.append("Cause (").append(String.valueOf(i3)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th = list.get(i2);
            if (th instanceof r) {
                ((r) th).e(appendable);
            } else {
                d(th, appendable);
            }
            i2 = i3;
        }
    }

    public static void d(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    public final void a(Throwable th, List<Throwable> list) {
        if (th instanceof r) {
            for (Throwable th2 : ((r) th).a) {
                a(th2, list);
            }
            return;
        }
        list.add(th);
    }

    public final void e(Appendable appendable) {
        d(this, appendable);
        b(this.a, new a(appendable));
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f3705e);
        String str3 = "";
        if (this.f3704d != null) {
            StringBuilder o = f.b.a.a.a.o(", ");
            o.append(this.f3704d);
            str = o.toString();
        } else {
            str = "";
        }
        sb.append(str);
        if (this.f3703c != null) {
            StringBuilder o2 = f.b.a.a.a.o(", ");
            o2.append(this.f3703c);
            str2 = o2.toString();
        } else {
            str2 = "";
        }
        sb.append(str2);
        if (this.b != null) {
            StringBuilder o3 = f.b.a.a.a.o(", ");
            o3.append(this.b);
            str3 = o3.toString();
        }
        sb.append(str3);
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        if (arrayList.isEmpty()) {
            return sb.toString();
        }
        if (arrayList.size() == 1) {
            sb.append("\nThere was 1 cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(arrayList.size());
            sb.append(" causes:");
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Throwable th = (Throwable) it.next();
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        e(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        e(printStream);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        e(printWriter);
    }

    /* compiled from: GlideException.java */
    /* loaded from: classes.dex */
    public static final class a implements Appendable {
        public final Appendable a;
        public boolean b = true;

        public a(Appendable appendable) {
            this.a = appendable;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c2) throws IOException {
            if (this.b) {
                this.b = false;
                this.a.append("  ");
            }
            this.b = c2 == '\n';
            this.a.append(c2);
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(@Nullable CharSequence charSequence) throws IOException {
            if (charSequence == null) {
                charSequence = "";
            }
            append(charSequence, 0, charSequence.length());
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(@Nullable CharSequence charSequence, int i2, int i3) throws IOException {
            if (charSequence == null) {
                charSequence = "";
            }
            boolean z = false;
            if (this.b) {
                this.b = false;
                this.a.append("  ");
            }
            if (charSequence.length() > 0 && charSequence.charAt(i3 - 1) == '\n') {
                z = true;
            }
            this.b = z;
            this.a.append(charSequence, i2, i3);
            return this;
        }
    }

    public r(String str, Throwable th) {
        List<Throwable> singletonList = Collections.singletonList(th);
        this.f3705e = str;
        setStackTrace(f3702f);
        this.a = singletonList;
    }

    public r(String str, List<Throwable> list) {
        this.f3705e = str;
        setStackTrace(f3702f);
        this.a = list;
    }
}
