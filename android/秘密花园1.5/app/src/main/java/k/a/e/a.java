package k.a.e;

import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import k.a.e.f;

/* compiled from: Attribute.java */
/* loaded from: classes2.dex */
public class a implements Map.Entry<String, String>, Cloneable {

    /* renamed from: d  reason: collision with root package name */
    public static final String[] f7075d = {"allowfullscreen", "async", "autofocus", "checked", "compact", "declare", "default", "defer", "disabled", "formnovalidate", "hidden", "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize", "noshade", "novalidate", "nowrap", "open", "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"};
    public String a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public b f7076c;

    public a(String str, String str2, b bVar) {
        j.b.s(str);
        String trim = str.trim();
        j.b.q(trim);
        this.a = trim;
        this.b = str2;
        this.f7076c = bVar;
    }

    public static boolean a(String str, String str2, f.a aVar) {
        if (aVar.f7087h == f.a.EnumC0116a.html) {
            if (str2 == null) {
                return true;
            }
            if ("".equals(str2) || str2.equalsIgnoreCase(str)) {
                if (Arrays.binarySearch(f7075d, str) >= 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public Object clone() throws CloneNotSupportedException {
        try {
            return (a) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        String str = this.a;
        if (str == null ? aVar.a == null : str.equals(aVar.a)) {
            String str2 = this.b;
            String str3 = aVar.b;
            return str2 != null ? str2.equals(str3) : str3 == null;
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public String getKey() {
        return this.a;
    }

    @Override // java.util.Map.Entry
    public String getValue() {
        String str = this.b;
        return str == null ? "" : str;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        String str = this.a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public String setValue(String str) {
        String str2 = str;
        String str3 = this.b;
        b bVar = this.f7076c;
        if (bVar != null) {
            str3 = bVar.g(this.a);
            int k2 = this.f7076c.k(this.a);
            if (k2 != -1) {
                this.f7076c.f7078c[k2] = str2;
            }
        }
        this.b = str2;
        return str3 == null ? "" : str3;
    }

    public String toString() {
        StringBuilder b = k.a.d.a.b();
        try {
            f.a aVar = new f("").f7079i;
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
