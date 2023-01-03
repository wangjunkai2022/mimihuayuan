package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.q;
import com.umeng.commonsdk.proguard.t;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: TUnion.java */
/* loaded from: classes.dex */
public abstract class t<T extends t<?, ?>, F extends q> implements j<T, F> {

    /* renamed from: c  reason: collision with root package name */
    public static final Map<Class<? extends aq>, ar> f3102c;
    public Object a;
    public F b;

    /* compiled from: TUnion.java */
    /* loaded from: classes.dex */
    public static class a extends as<t> {
        public a() {
        }

        @Override // com.umeng.commonsdk.proguard.aq
        /* renamed from: a */
        public void b(ai aiVar, t tVar) throws p {
            tVar.b = null;
            tVar.a = null;
            aiVar.j();
            ad l2 = aiVar.l();
            Object a = tVar.a(aiVar, l2);
            tVar.a = a;
            if (a != null) {
                tVar.b = (F) tVar.a(l2.f3019c);
            }
            aiVar.m();
            aiVar.l();
            aiVar.k();
        }

        @Override // com.umeng.commonsdk.proguard.aq
        /* renamed from: b */
        public void a(ai aiVar, t tVar) throws p {
            if (tVar.a() != null && tVar.b() != null) {
                aiVar.a(tVar.d());
                aiVar.a(tVar.c(tVar.b));
                tVar.a(aiVar);
                aiVar.c();
                aiVar.d();
                aiVar.b();
                return;
            }
            throw new aj("Cannot write a TUnion with no set value!");
        }
    }

    /* compiled from: TUnion.java */
    /* loaded from: classes.dex */
    public static class b implements ar {
        public b() {
        }

        @Override // com.umeng.commonsdk.proguard.ar
        /* renamed from: a */
        public a b() {
            return new a();
        }
    }

    /* compiled from: TUnion.java */
    /* loaded from: classes.dex */
    public static class c extends at<t> {
        public c() {
        }

        @Override // com.umeng.commonsdk.proguard.aq
        /* renamed from: a */
        public void b(ai aiVar, t tVar) throws p {
            tVar.b = null;
            tVar.a = null;
            short v = aiVar.v();
            Object a = tVar.a(aiVar, v);
            tVar.a = a;
            if (a != null) {
                tVar.b = (F) tVar.a(v);
            }
        }

        @Override // com.umeng.commonsdk.proguard.aq
        /* renamed from: b */
        public void a(ai aiVar, t tVar) throws p {
            if (tVar.a() != null && tVar.b() != null) {
                aiVar.a(tVar.b.a());
                tVar.b(aiVar);
                return;
            }
            throw new aj("Cannot write a TUnion with no set value!");
        }
    }

    /* compiled from: TUnion.java */
    /* loaded from: classes.dex */
    public static class d implements ar {
        public d() {
        }

        @Override // com.umeng.commonsdk.proguard.ar
        /* renamed from: a */
        public c b() {
            return new c();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f3102c = hashMap;
        hashMap.put(as.class, new b());
        f3102c.put(at.class, new d());
    }

    public t() {
        this.b = null;
        this.a = null;
    }

    public static Object a(Object obj) {
        if (obj instanceof j) {
            return ((j) obj).deepCopy();
        }
        if (obj instanceof ByteBuffer) {
            return k.d((ByteBuffer) obj);
        }
        if (obj instanceof List) {
            return a((List) obj);
        }
        if (obj instanceof Set) {
            return a((Set) obj);
        }
        return obj instanceof Map ? a((Map<Object, Object>) obj) : obj;
    }

    public abstract F a(short s);

    public abstract Object a(ai aiVar, ad adVar) throws p;

    public abstract Object a(ai aiVar, short s) throws p;

    public abstract void a(ai aiVar) throws p;

    public Object b() {
        return this.a;
    }

    public abstract void b(ai aiVar) throws p;

    public abstract void b(F f2, Object obj) throws ClassCastException;

    public abstract ad c(F f2);

    public boolean c() {
        return this.b != null;
    }

    @Override // com.umeng.commonsdk.proguard.j
    public final void clear() {
        this.b = null;
        this.a = null;
    }

    public abstract an d();

    @Override // com.umeng.commonsdk.proguard.j
    public void read(ai aiVar) throws p {
        f3102c.get(aiVar.D()).b().b(aiVar, this);
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("<");
        o.append(t.class.getSimpleName());
        o.append(" ");
        if (a() != null) {
            Object b2 = b();
            o.append(c(a()).a);
            o.append(":");
            if (b2 instanceof ByteBuffer) {
                k.a((ByteBuffer) b2, o);
            } else {
                o.append(b2.toString());
            }
        }
        o.append(">");
        return o.toString();
    }

    @Override // com.umeng.commonsdk.proguard.j
    public void write(ai aiVar) throws p {
        f3102c.get(aiVar.D()).b().a(aiVar, this);
    }

    public boolean b(F f2) {
        return this.b == f2;
    }

    public boolean b(int i2) {
        return b((t<T, F>) a((short) i2));
    }

    public t(F f2, Object obj) {
        a((t<T, F>) f2, obj);
    }

    public t(t<T, F> tVar) {
        if (tVar.getClass().equals(t.class)) {
            this.b = tVar.b;
            this.a = a(tVar.a);
            return;
        }
        throw new ClassCastException();
    }

    public static Map a(Map<Object, Object> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            hashMap.put(a(entry.getKey()), a(entry.getValue()));
        }
        return hashMap;
    }

    public static Set a(Set set) {
        HashSet hashSet = new HashSet();
        for (Object obj : set) {
            hashSet.add(a(obj));
        }
        return hashSet;
    }

    public static List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Object obj : list) {
            arrayList.add(a(obj));
        }
        return arrayList;
    }

    public F a() {
        return this.b;
    }

    public Object a(F f2) {
        if (f2 == this.b) {
            return b();
        }
        throw new IllegalArgumentException("Cannot get the value of field " + f2 + " because union's set field is " + this.b);
    }

    public Object a(int i2) {
        return a((t<T, F>) a((short) i2));
    }

    public void a(F f2, Object obj) {
        b(f2, obj);
        this.b = f2;
        this.a = obj;
    }

    public void a(int i2, Object obj) {
        a((t<T, F>) a((short) i2), obj);
    }
}
