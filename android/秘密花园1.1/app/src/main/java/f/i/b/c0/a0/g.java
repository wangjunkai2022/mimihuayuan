package f.i.b.c0.a0;

import f.i.b.a0;
import f.i.b.c0.t;
import f.i.b.e0.a;
import f.i.b.w;
import f.i.b.z;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

/* compiled from: MapTypeAdapterFactory.java */
/* loaded from: classes.dex */
public final class g implements a0 {
    public final f.i.b.c0.g a;
    public final boolean b;

    /* compiled from: MapTypeAdapterFactory.java */
    /* loaded from: classes.dex */
    public final class a<K, V> extends z<Map<K, V>> {
        public final z<K> a;
        public final z<V> b;

        /* renamed from: c  reason: collision with root package name */
        public final t<? extends Map<K, V>> f6012c;

        public a(f.i.b.j jVar, Type type, z<K> zVar, Type type2, z<V> zVar2, t<? extends Map<K, V>> tVar) {
            this.a = new n(jVar, zVar, type);
            this.b = new n(jVar, zVar2, type2);
            this.f6012c = tVar;
        }

        @Override // f.i.b.z
        public Object a(f.i.b.e0.a aVar) throws IOException {
            f.i.b.e0.b V = aVar.V();
            if (V == f.i.b.e0.b.NULL) {
                aVar.R();
                return null;
            }
            Map<K, V> a = this.f6012c.a();
            if (V == f.i.b.e0.b.BEGIN_ARRAY) {
                aVar.d();
                while (aVar.I()) {
                    aVar.d();
                    K a2 = this.a.a(aVar);
                    if (a.put(a2, this.b.a(aVar)) == null) {
                        aVar.E();
                    } else {
                        throw new w("duplicate key: " + a2);
                    }
                }
                aVar.E();
            } else {
                aVar.e();
                while (aVar.I()) {
                    if (((a.C0096a) f.i.b.c0.q.a) != null) {
                        if (aVar instanceof e) {
                            e eVar = (e) aVar;
                            eVar.c0(f.i.b.e0.b.NAME);
                            Map.Entry entry = (Map.Entry) ((Iterator) eVar.d0()).next();
                            eVar.f0(entry.getValue());
                            eVar.f0(new f.i.b.t((String) entry.getKey()));
                        } else {
                            int i2 = aVar.f6074h;
                            if (i2 == 0) {
                                i2 = aVar.g();
                            }
                            if (i2 == 13) {
                                aVar.f6074h = 9;
                            } else if (i2 == 12) {
                                aVar.f6074h = 8;
                            } else if (i2 == 14) {
                                aVar.f6074h = 10;
                            } else {
                                StringBuilder o = f.b.a.a.a.o("Expected a name but was ");
                                o.append(aVar.V());
                                o.append(aVar.K());
                                throw new IllegalStateException(o.toString());
                            }
                        }
                        K a3 = this.a.a(aVar);
                        if (a.put(a3, this.b.a(aVar)) != null) {
                            throw new w("duplicate key: " + a3);
                        }
                    } else {
                        throw null;
                    }
                }
                aVar.F();
            }
            return a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, Object obj) throws IOException {
            String str;
            Map map = (Map) obj;
            if (map == null) {
                cVar.I();
            } else if (!g.this.b) {
                cVar.f();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    cVar.G(String.valueOf(entry.getKey()));
                    this.b.b(cVar, entry.getValue());
                }
                cVar.F();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                int i2 = 0;
                boolean z = false;
                for (Map.Entry<K, V> entry2 : map.entrySet()) {
                    z<K> zVar = this.a;
                    K key = entry2.getKey();
                    if (zVar != null) {
                        try {
                            f fVar = new f();
                            zVar.b(fVar, key);
                            if (fVar.f6010l.isEmpty()) {
                                f.i.b.o oVar = fVar.n;
                                arrayList.add(oVar);
                                arrayList2.add(entry2.getValue());
                                if (oVar != null) {
                                    z |= (oVar instanceof f.i.b.l) || (oVar instanceof f.i.b.r);
                                } else {
                                    throw null;
                                }
                            } else {
                                throw new IllegalStateException("Expected one JSON element but was " + fVar.f6010l);
                            }
                        } catch (IOException e2) {
                            throw new f.i.b.p(e2);
                        }
                    } else {
                        throw null;
                    }
                }
                if (z) {
                    cVar.e();
                    int size = arrayList.size();
                    while (i2 < size) {
                        cVar.e();
                        o.X.b(cVar, (f.i.b.o) arrayList.get(i2));
                        this.b.b(cVar, arrayList2.get(i2));
                        cVar.E();
                        i2++;
                    }
                    cVar.E();
                    return;
                }
                cVar.f();
                int size2 = arrayList.size();
                while (i2 < size2) {
                    f.i.b.o oVar2 = (f.i.b.o) arrayList.get(i2);
                    if (oVar2 != null) {
                        if (oVar2 instanceof f.i.b.t) {
                            f.i.b.t b = oVar2.b();
                            Object obj2 = b.a;
                            if (obj2 instanceof Number) {
                                str = String.valueOf(b.d());
                            } else if (obj2 instanceof Boolean) {
                                str = Boolean.toString(b.c());
                            } else if (obj2 instanceof String) {
                                str = b.e();
                            } else {
                                throw new AssertionError();
                            }
                        } else if (!(oVar2 instanceof f.i.b.q)) {
                            throw new AssertionError();
                        } else {
                            str = "null";
                        }
                        cVar.G(str);
                        this.b.b(cVar, arrayList2.get(i2));
                        i2++;
                    } else {
                        throw null;
                    }
                }
                cVar.F();
            }
        }
    }

    public g(f.i.b.c0.g gVar, boolean z) {
        this.a = gVar;
        this.b = z;
    }

    @Override // f.i.b.a0
    public <T> z<T> a(f.i.b.j jVar, f.i.b.d0.a<T> aVar) {
        Type[] actualTypeArguments;
        z<Boolean> zVar;
        Type type = aVar.b;
        if (Map.class.isAssignableFrom(aVar.a)) {
            Class<?> e2 = f.i.b.c0.a.e(type);
            if (type == Properties.class) {
                actualTypeArguments = new Type[]{String.class, String.class};
            } else {
                Type f2 = f.i.b.c0.a.f(type, e2, Map.class);
                actualTypeArguments = f2 instanceof ParameterizedType ? ((ParameterizedType) f2).getActualTypeArguments() : new Type[]{Object.class, Object.class};
            }
            Type type2 = actualTypeArguments[0];
            if (type2 != Boolean.TYPE && type2 != Boolean.class) {
                zVar = jVar.f(new f.i.b.d0.a<>(type2));
            } else {
                zVar = o.f6033f;
            }
            return new a(jVar, actualTypeArguments[0], zVar, actualTypeArguments[1], jVar.f(new f.i.b.d0.a<>(actualTypeArguments[1])), this.a.a(aVar));
        }
        return null;
    }
}
