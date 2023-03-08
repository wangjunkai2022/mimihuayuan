package f.i.a.a.l1.k0;

import android.database.SQLException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.ConditionVariable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.i.a.a.l1.k0.b;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Random;
import java.util.TreeSet;

/* compiled from: SimpleCache.java */
/* loaded from: classes.dex */
public final class v implements b {

    /* renamed from: k  reason: collision with root package name */
    public static final HashSet<File> f5662k = new HashSet<>();
    public final File a;
    public final g b;

    /* renamed from: c  reason: collision with root package name */
    public final n f5663c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final i f5664d;

    /* renamed from: e  reason: collision with root package name */
    public final HashMap<String, ArrayList<b.InterfaceC0088b>> f5665e;

    /* renamed from: f  reason: collision with root package name */
    public final Random f5666f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f5667g;

    /* renamed from: h  reason: collision with root package name */
    public long f5668h;

    /* renamed from: i  reason: collision with root package name */
    public long f5669i;

    /* renamed from: j  reason: collision with root package name */
    public b.a f5670j;

    @Deprecated
    public v(File file, g gVar, @Nullable byte[] bArr) {
        this(file, gVar, null, bArr, bArr != null, true);
    }

    public static void l(v vVar) {
        long j2;
        if (!vVar.a.exists() && !vVar.a.mkdirs()) {
            StringBuilder o = f.b.a.a.a.o("Failed to create cache directory: ");
            o.append(vVar.a);
            vVar.f5670j = new b.a(o.toString());
            return;
        }
        File[] listFiles = vVar.a.listFiles();
        if (listFiles == null) {
            StringBuilder o2 = f.b.a.a.a.o("Failed to list cache directory files: ");
            o2.append(vVar.a);
            vVar.f5670j = new b.a(o2.toString());
            return;
        }
        int length = listFiles.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                j2 = -1;
                break;
            }
            File file = listFiles[i2];
            String name = file.getName();
            if (name.endsWith(".uid")) {
                try {
                    j2 = Long.parseLong(name.substring(0, name.indexOf(46)), 16);
                    break;
                } catch (NumberFormatException unused) {
                    String str = "Malformed UID file: " + file;
                    file.delete();
                }
            }
            i2++;
        }
        vVar.f5668h = j2;
        if (j2 == -1) {
            try {
                vVar.f5668h = o(vVar.a);
            } catch (IOException e2) {
                StringBuilder o3 = f.b.a.a.a.o("Failed to create cache UID: ");
                o3.append(vVar.a);
                vVar.f5670j = new b.a(o3.toString(), e2);
                return;
            }
        }
        try {
            vVar.f5663c.e(vVar.f5668h);
            if (vVar.f5664d != null) {
                vVar.f5664d.b(vVar.f5668h);
                Map<String, h> a = vVar.f5664d.a();
                vVar.p(vVar.a, true, listFiles, a);
                vVar.f5664d.c(((HashMap) a).keySet());
            } else {
                vVar.p(vVar.a, true, listFiles, null);
            }
            n nVar = vVar.f5663c;
            int size = nVar.a.size();
            String[] strArr = new String[size];
            nVar.a.keySet().toArray(strArr);
            for (int i3 = 0; i3 < size; i3++) {
                nVar.f(strArr[i3]);
            }
            try {
                vVar.f5663c.g();
            } catch (IOException unused2) {
            }
        } catch (IOException e3) {
            StringBuilder o4 = f.b.a.a.a.o("Failed to initialize cache indices: ");
            o4.append(vVar.a);
            vVar.f5670j = new b.a(o4.toString(), e3);
        }
    }

    public static long o(File file) throws IOException {
        long nextLong = new SecureRandom().nextLong();
        long abs = nextLong == Long.MIN_VALUE ? 0L : Math.abs(nextLong);
        File file2 = new File(file, f.b.a.a.a.f(Long.toString(abs, 16), ".uid"));
        if (file2.createNewFile()) {
            return abs;
        }
        throw new IOException("Failed to create UID file: " + file2);
    }

    @Override // f.i.a.a.l1.k0.b
    public synchronized File a(String str, long j2, long j3) throws b.a {
        m mVar;
        File file;
        c.a.a.b.g.h.v(true);
        n();
        mVar = this.f5663c.a.get(str);
        c.a.a.b.g.h.t(mVar);
        c.a.a.b.g.h.v(mVar.f5647e);
        if (!this.a.exists()) {
            this.a.mkdirs();
            r();
        }
        this.b.f(this, str, j2, j3);
        file = new File(this.a, Integer.toString(this.f5666f.nextInt(10)));
        if (!file.exists()) {
            file.mkdir();
        }
        return w.c(file, mVar.a, j2, System.currentTimeMillis());
    }

    @Override // f.i.a.a.l1.k0.b
    public synchronized void b(File file, long j2) throws b.a {
        boolean z = true;
        c.a.a.b.g.h.v(true);
        if (file.exists()) {
            if (j2 == 0) {
                file.delete();
                return;
            }
            w b = w.b(file, j2, -9223372036854775807L, this.f5663c);
            c.a.a.b.g.h.t(b);
            m c2 = this.f5663c.c(b.a);
            c.a.a.b.g.h.t(c2);
            c.a.a.b.g.h.v(c2.f5647e);
            long a = o.a(c2.f5646d);
            if (a != -1) {
                if (b.b + b.f5640c > a) {
                    z = false;
                }
                c.a.a.b.g.h.v(z);
            }
            if (this.f5664d != null) {
                try {
                    this.f5664d.d(file.getName(), b.f5640c, b.f5643f);
                } catch (IOException e2) {
                    throw new b.a(e2);
                }
            }
            m(b);
            try {
                this.f5663c.g();
                notifyAll();
            } catch (IOException e3) {
                throw new b.a(e3);
            }
        }
    }

    @Override // f.i.a.a.l1.k0.b
    public synchronized p c(String str) {
        r rVar;
        c.a.a.b.g.h.v(true);
        m mVar = this.f5663c.a.get(str);
        if (mVar != null) {
            rVar = mVar.f5646d;
        } else {
            rVar = r.f5660c;
        }
        return rVar;
    }

    @Override // f.i.a.a.l1.k0.b
    public synchronized void d(String str, q qVar) throws b.a {
        c.a.a.b.g.h.v(true);
        n();
        n nVar = this.f5663c;
        m d2 = nVar.d(str);
        r rVar = d2.f5646d;
        r a = rVar.a(qVar);
        d2.f5646d = a;
        if (!a.equals(rVar)) {
            nVar.f5650e.f(d2);
        }
        try {
            this.f5663c.g();
        } catch (IOException e2) {
            throw new b.a(e2);
        }
    }

    @Override // f.i.a.a.l1.k0.b
    public synchronized void e(k kVar) {
        c.a.a.b.g.h.v(true);
        q(kVar);
    }

    @Override // f.i.a.a.l1.k0.b
    public synchronized long f() {
        c.a.a.b.g.h.v(true);
        return this.f5669i;
    }

    @Override // f.i.a.a.l1.k0.b
    public k g(String str, long j2) throws InterruptedException, b.a {
        w i2;
        synchronized (this) {
            c.a.a.b.g.h.v(true);
            n();
            while (true) {
                i2 = i(str, j2);
                if (i2 == null) {
                    wait();
                }
            }
        }
        return i2;
    }

    @Override // f.i.a.a.l1.k0.b
    public synchronized void h(k kVar) {
        c.a.a.b.g.h.v(true);
        m c2 = this.f5663c.c(kVar.a);
        c.a.a.b.g.h.t(c2);
        c.a.a.b.g.h.v(c2.f5647e);
        c2.f5647e = false;
        this.f5663c.f(c2.b);
        notifyAll();
    }

    @Override // f.i.a.a.l1.k0.b
    @NonNull
    public synchronized NavigableSet<k> j(String str) {
        TreeSet treeSet;
        c.a.a.b.g.h.v(true);
        m mVar = this.f5663c.a.get(str);
        if (mVar != null && !mVar.f5645c.isEmpty()) {
            treeSet = new TreeSet((Collection) mVar.f5645c);
        }
        treeSet = new TreeSet();
        return treeSet;
    }

    @Override // f.i.a.a.l1.k0.b
    public synchronized long k(String str, long j2, long j3) {
        m mVar;
        c.a.a.b.g.h.v(true);
        mVar = this.f5663c.a.get(str);
        return mVar != null ? mVar.a(j2, j3) : -j3;
    }

    public final void m(w wVar) {
        this.f5663c.d(wVar.a).f5645c.add(wVar);
        this.f5669i += wVar.f5640c;
        ArrayList<b.InterfaceC0088b> arrayList = this.f5665e.get(wVar.a);
        if (arrayList != null) {
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                arrayList.get(size).c(this, wVar);
            }
        }
        this.b.c(this, wVar);
    }

    public synchronized void n() throws b.a {
        if (this.f5670j != null) {
            throw this.f5670j;
        }
    }

    public final void p(File file, boolean z, @Nullable File[] fileArr, @Nullable Map<String, h> map) {
        if (fileArr == null || fileArr.length == 0) {
            if (z) {
                return;
            }
            file.delete();
            return;
        }
        for (File file2 : fileArr) {
            String name = file2.getName();
            if (z && name.indexOf(46) == -1) {
                p(file2, false, file2.listFiles(), map);
            } else if (!z || (!name.startsWith("cached_content_index.exi") && !name.endsWith(".uid"))) {
                long j2 = -1;
                long j3 = -9223372036854775807L;
                h remove = map != null ? map.remove(name) : null;
                if (remove != null) {
                    j2 = remove.a;
                    j3 = remove.b;
                }
                w b = w.b(file2, j2, j3, this.f5663c);
                if (b != null) {
                    m(b);
                } else {
                    file2.delete();
                }
            }
        }
    }

    public final void q(k kVar) {
        boolean z;
        m c2 = this.f5663c.c(kVar.a);
        if (c2 != null) {
            if (c2.f5645c.remove(kVar)) {
                kVar.f5642e.delete();
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.f5669i -= kVar.f5640c;
                if (this.f5664d != null) {
                    String name = kVar.f5642e.getName();
                    try {
                        i iVar = this.f5664d;
                        c.a.a.b.g.h.t(iVar.b);
                        try {
                            ((SQLiteOpenHelper) iVar.a).getWritableDatabase().delete(iVar.b, "0 = ?", new String[]{name});
                        } catch (SQLException e2) {
                            throw new f.i.a.a.x0.a(e2);
                        }
                    } catch (IOException unused) {
                    }
                }
                this.f5663c.f(c2.b);
                ArrayList<b.InterfaceC0088b> arrayList = this.f5665e.get(kVar.a);
                if (arrayList != null) {
                    int size = arrayList.size();
                    while (true) {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        arrayList.get(size).a(this, kVar);
                    }
                }
                this.b.a(this, kVar);
            }
        }
    }

    public final void r() {
        ArrayList arrayList = new ArrayList();
        for (m mVar : this.f5663c.a.values()) {
            Iterator<w> it = mVar.f5645c.iterator();
            while (it.hasNext()) {
                w next = it.next();
                if (!next.f5642e.exists()) {
                    arrayList.add(next);
                }
            }
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            q((k) arrayList.get(i2));
        }
    }

    @Override // f.i.a.a.l1.k0.b
    @Nullable
    /* renamed from: s */
    public synchronized w i(String str, long j2) throws b.a {
        w b;
        w wVar;
        boolean z = true;
        c.a.a.b.g.h.v(true);
        n();
        m mVar = this.f5663c.a.get(str);
        if (mVar == null) {
            wVar = new w(str, j2, -1L, -9223372036854775807L, null);
        } else {
            while (true) {
                b = mVar.b(j2);
                if (!b.f5641d || b.f5642e.exists()) {
                    break;
                }
                r();
            }
            wVar = b;
        }
        if (wVar.f5641d) {
            if (this.f5667g) {
                File file = wVar.f5642e;
                c.a.a.b.g.h.t(file);
                String name = file.getName();
                long j3 = wVar.f5640c;
                long currentTimeMillis = System.currentTimeMillis();
                if (this.f5664d != null) {
                    try {
                        this.f5664d.d(name, j3, currentTimeMillis);
                    } catch (IOException unused) {
                    }
                    z = false;
                }
                w c2 = this.f5663c.a.get(str).c(wVar, currentTimeMillis, z);
                ArrayList<b.InterfaceC0088b> arrayList = this.f5665e.get(wVar.a);
                if (arrayList != null) {
                    int size = arrayList.size();
                    while (true) {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        arrayList.get(size).b(this, wVar, c2);
                    }
                }
                this.b.b(this, wVar, c2);
                return c2;
            }
            return wVar;
        }
        m d2 = this.f5663c.d(str);
        if (d2.f5647e) {
            return null;
        }
        d2.f5647e = true;
        return wVar;
    }

    public v(File file, g gVar, @Nullable f.i.a.a.x0.b bVar, @Nullable byte[] bArr, boolean z, boolean z2) {
        boolean add;
        n nVar = new n(bVar, file, bArr, z, z2);
        i iVar = (bVar == null || z2) ? null : new i(bVar);
        synchronized (v.class) {
            add = f5662k.add(file.getAbsoluteFile());
        }
        if (add) {
            this.a = file;
            this.b = gVar;
            this.f5663c = nVar;
            this.f5664d = iVar;
            this.f5665e = new HashMap<>();
            this.f5666f = new Random();
            this.f5667g = gVar.e();
            this.f5668h = -1L;
            ConditionVariable conditionVariable = new ConditionVariable();
            new u(this, "SimpleCache.initialize()", conditionVariable).start();
            conditionVariable.block();
            return;
        }
        throw new IllegalStateException("Another SimpleCache instance uses the folder: " + file);
    }
}
