package k.a.e;

import j.b;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import k.a.e.f;

/* compiled from: Attribute.java */
/* loaded from: classes.dex */
public class a implements Map.Entry<String, String>, Cloneable {

    /* renamed from: d  reason: collision with root package name */
    public static final String[] f7000d = {"allowfullscreen", "async", "autofocus", "checked", "compact", "declare", "default", "defer", "disabled", "formnovalidate", "hidden", "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize", "noshade", "novalidate", "nowrap", "open", "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"};
    public String a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public b f7001c;

    public a(String str, String str2, b bVar) {
        b.s(str);
        String trim = str.trim();
        b.q(trim);
        this.a = trim;
        this.b = str2;
        this.f7001c = bVar;
    }

    public static boolean a(String str, String str2, f.a aVar) {
        if (aVar.f7012h == f.a.EnumC0109a.html) {
            if (str2 == null) {
                return true;
            }
            if ("".equals(str2) || str2.equalsIgnoreCase(str)) {
                if (Arrays.binarySearch(f7000d, str) >= 0) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.lang.Object
    public Object clone() throws CloneNotSupportedException {
        try {
            return (a) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // java.util.Map.Entry, java.lang.Object
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        String str = this.a;
        if (str == null ? aVar.a != null : !str.equals(aVar.a)) {
            return false;
        }
        String str2 = this.b;
        String str3 = aVar.b;
        if (str2 != null) {
            return str2.equals(str3);
        }
        if (str3 == null) {
            return true;
        }
        return false;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Map.Entry
    public String getKey() {
        return this.a;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Map.Entry
    public String getValue() {
        String str = this.b;
        return str == null ? "" : str;
    }

    @Override // java.util.Map.Entry, java.lang.Object
    public int hashCode() {
        String str = this.a;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.Map.Entry
    public String setValue(String str) {
        String str2 = str;
        String str3 = this.b;
        b bVar = this.f7001c;
        if (bVar != null) {
            str3 = bVar.g(this.a);
            int k2 = this.f7001c.k(this.a);
            if (k2 != -1) {
                this.f7001c.f7003c[k2] = str2;
            }
        }
        this.b = str2;
        return str3 == null ? "" : str3;
    }

    @Override // java.lang.Object
    public String toString() {
        StringBuilder b = k.a.d.a.b();
        try {
            f.a aVar = new f("").f7004i;
            String str = this.a;
            String str2 = this.b;
            b.append((CharSequence) str);
            if (!a(str, str2, aVar)) {
                b.append((CharSequence) "=\"");
                if (str2 == null) {
                    str2 = "";
                }
                i.c(b, str2, aVar, true, false, false);
                b.append('\"');
            }
            return k.a.d.a.j(b);
        } catch (IOException e2) {
            throw new k.a.a(e2);
        }
    }
}
