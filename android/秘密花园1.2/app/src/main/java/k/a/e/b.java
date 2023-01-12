package k.a.e;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import k.a.e.f;

/* compiled from: Attributes.java */
/* loaded from: classes2.dex */
public class b implements Iterable<k.a.e.a>, Cloneable {

    /* renamed from: d  reason: collision with root package name */
    public static final String[] f7077d = new String[0];
    public int a = 0;
    public String[] b;

    /* renamed from: c  reason: collision with root package name */
    public String[] f7078c;

    /* compiled from: Attributes.java */
    /* loaded from: classes2.dex */
    public class a implements Iterator<k.a.e.a> {
        public int a = 0;

        public a() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (true) {
                int i2 = this.a;
                b bVar = b.this;
                if (i2 >= bVar.a || !bVar.m(bVar.b[i2])) {
                    break;
                }
                this.a++;
            }
            return this.a < b.this.a;
        }

        @Override // java.util.Iterator
        public k.a.e.a next() {
            b bVar = b.this;
            String[] strArr = bVar.b;
            int i2 = this.a;
            k.a.e.a aVar = new k.a.e.a(strArr[i2], bVar.f7078c[i2], bVar);
            this.a++;
            return aVar;
        }

        @Override // java.util.Iterator
        public void remove() {
            b bVar = b.this;
            int i2 = this.a - 1;
            this.a = i2;
            bVar.p(i2);
        }
    }

    public b() {
        String[] strArr = f7077d;
        this.b = strArr;
        this.f7078c = strArr;
    }

    public static String[] f(String[] strArr, int i2) {
        String[] strArr2 = new String[i2];
        System.arraycopy(strArr, 0, strArr2, 0, Math.min(strArr.length, i2));
        return strArr2;
    }

    public b b(String str, String str2) {
        d(this.a + 1);
        String[] strArr = this.b;
        int i2 = this.a;
        strArr[i2] = str;
        this.f7078c[i2] = str2;
        this.a = i2 + 1;
        return this;
    }

    public void c(b bVar) {
        if (bVar.size() == 0) {
            return;
        }
        d(this.a + bVar.a);
        a aVar = new a();
        while (aVar.hasNext()) {
            o((k.a.e.a) aVar.next());
        }
    }

    public final void d(int i2) {
        j.b.n(i2 >= this.a);
        int length = this.b.length;
        if (length >= i2) {
            return;
        }
        int i3 = length >= 2 ? this.a * 2 : 2;
        if (i2 <= i3) {
            i2 = i3;
        }
        this.b = f(this.b, i2);
        this.f7078c = f(this.f7078c, i2);
    }

    /* renamed from: e */
    public b clone() {
        try {
            b bVar = (b) super.clone();
            bVar.a = this.a;
            this.b = f(this.b, this.a);
            this.f7078c = f(this.f7078c, this.a);
            return bVar;
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.a == bVar.a && Arrays.equals(this.b, bVar.b)) {
            return Arrays.equals(this.f7078c, bVar.f7078c);
        }
        return false;
    }

    public String g(String str) {
        String str2;
        int k2 = k(str);
        return (k2 == -1 || (str2 = this.f7078c[k2]) == null) ? "" : str2;
    }

    public String h(String str) {
        String str2;
        int l2 = l(str);
        return (l2 == -1 || (str2 = this.f7078c[l2]) == null) ? "" : str2;
    }

    public int hashCode() {
        return (((this.a * 31) + Arrays.hashCode(this.b)) * 31) + Arrays.hashCode(this.f7078c);
    }

    public boolean i(String str) {
        return k(str) != -1;
    }

    @Override // java.lang.Iterable
    public Iterator<k.a.e.a> iterator() {
        return new a();
    }

    public final void j(Appendable appendable, f.a aVar) throws IOException {
        int i2 = this.a;
        for (int i3 = 0; i3 < i2; i3++) {
            if (!m(this.b[i3])) {
                String str = this.b[i3];
                String str2 = this.f7078c[i3];
                appendable.append(' ').append(str);
                if (!k.a.e.a.a(str, str2, aVar)) {
                    appendable.append("=\"");
                    if (str2 == null) {
                        str2 = "";
                    }
                    i.c(appendable, str2, aVar, true, false, false);
                    appendable.append('\"');
                }
            }
        }
    }

    public int k(String str) {
        j.b.s(str);
        for (int i2 = 0; i2 < this.a; i2++) {
            if (str.equals(this.b[i2])) {
                return i2;
            }
        }
        return -1;
    }

    public final int l(String str) {
        j.b.s(str);
        for (int i2 = 0; i2 < this.a; i2++) {
            if (str.equalsIgnoreCase(this.b[i2])) {
                return i2;
            }
        }
        return -1;
    }

    public final boolean m(String str) {
        return str != null && str.length() > 1 && str.charAt(0) == '/';
    }

    public b n(String str, String str2) {
        j.b.s(str);
        int k2 = k(str);
        if (k2 != -1) {
            this.f7078c[k2] = str2;
        } else {
            b(str, str2);
        }
        return this;
    }

    public b o(k.a.e.a aVar) {
        j.b.s(aVar);
        String str = aVar.a;
        String str2 = aVar.b;
        if (str2 == null) {
            str2 = "";
        }
        n(str, str2);
        aVar.f7076c = this;
        return this;
    }

    public final void p(int i2) {
        j.b.m(i2 >= this.a);
        int i3 = (this.a - i2) - 1;
        if (i3 > 0) {
            String[] strArr = this.b;
            int i4 = i2 + 1;
            System.arraycopy(strArr, i4, strArr, i2, i3);
            String[] strArr2 = this.f7078c;
            System.arraycopy(strArr2, i4, strArr2, i2, i3);
        }
        int i5 = this.a - 1;
        this.a = i5;
        this.b[i5] = null;
        this.f7078c[i5] = null;
    }

    public int size() {
        int i2 = 0;
        for (int i3 = 0; i3 < this.a; i3++) {
            if (!m(this.b[i3])) {
                i2++;
            }
        }
        return i2;
    }

    public String toString() {
        StringBuilder b = k.a.d.a.b();
        try {
            j(b, new f("").f7079i);
            return k.a.d.a.j(b);
        } catch (IOException e2) {
            throw new k.a.a(e2);
        }
    }
}
