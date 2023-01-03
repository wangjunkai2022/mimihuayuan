package l;

import i.a0;
import i.f;
import i.w;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.net.URI;
import java.util.Map;
import l.c0;
import l.f0;
import l.l0;
import l.o;

/* compiled from: ServiceMethod.java */
/* loaded from: classes2.dex */
public abstract class i0<T> {
    public static <T> i0<T> a(h0 h0Var, Method method) {
        Annotation[] annotationArr;
        Type genericReturnType;
        boolean z;
        Type[] genericParameterTypes;
        int i2;
        int i3;
        c0<?> c0Var;
        int i4;
        int i5;
        int i6;
        int i7;
        c0<?> c0Var2;
        c0<?> eVar;
        c0<?> b0Var;
        c0<?> cVar;
        c0<?> bVar;
        f0.a aVar = new f0.a(h0Var, method);
        for (Annotation annotation : aVar.f7174c) {
            if (annotation instanceof l.o0.b) {
                aVar.b("DELETE", ((l.o0.b) annotation).value(), false);
            } else if (annotation instanceof l.o0.f) {
                aVar.b("GET", ((l.o0.f) annotation).value(), false);
            } else if (annotation instanceof l.o0.g) {
                aVar.b("HEAD", ((l.o0.g) annotation).value(), false);
            } else if (annotation instanceof l.o0.l) {
                aVar.b("PATCH", ((l.o0.l) annotation).value(), true);
            } else if (annotation instanceof l.o0.m) {
                aVar.b("POST", ((l.o0.m) annotation).value(), true);
            } else if (annotation instanceof l.o0.n) {
                aVar.b("PUT", ((l.o0.n) annotation).value(), true);
            } else if (annotation instanceof l.o0.k) {
                aVar.b("OPTIONS", ((l.o0.k) annotation).value(), false);
            } else if (annotation instanceof l.o0.h) {
                l.o0.h hVar = (l.o0.h) annotation;
                aVar.b(hVar.method(), hVar.path(), hVar.hasBody());
            } else if (annotation instanceof l.o0.j) {
                String[] value = ((l.o0.j) annotation).value();
                if (value.length != 0) {
                    w.a aVar2 = new w.a();
                    for (String str : value) {
                        int indexOf = str.indexOf(58);
                        if (indexOf == -1 || indexOf == 0 || indexOf == str.length() - 1) {
                            throw l0.j(aVar.b, "@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                        }
                        String substring = str.substring(0, indexOf);
                        String trim = str.substring(indexOf + 1).trim();
                        if ("Content-Type".equalsIgnoreCase(substring)) {
                            try {
                                aVar.t = i.z.b(trim);
                            } catch (IllegalArgumentException e2) {
                                throw l0.k(aVar.b, e2, "Malformed content type: %s", trim);
                            }
                        } else {
                            aVar2.a(substring, trim);
                        }
                    }
                    aVar.s = aVar2.d();
                } else {
                    throw l0.j(aVar.b, "@Headers annotation is empty.", new Object[0]);
                }
            } else if (!(annotation instanceof l.o0.e)) {
                continue;
            } else if (!aVar.q) {
                aVar.p = true;
            } else {
                throw l0.j(aVar.b, "Only one encoding annotation is allowed.", new Object[0]);
            }
        }
        if (aVar.n != null) {
            if (!aVar.o) {
                if (!aVar.q) {
                    if (aVar.p) {
                        throw l0.j(aVar.b, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                    }
                } else {
                    throw l0.j(aVar.b, "Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
            }
            int length = aVar.f7175d.length;
            aVar.v = new c0[length];
            int i8 = length - 1;
            int i9 = 0;
            while (i9 < length) {
                c0<?>[] c0VarArr = aVar.v;
                Type type = aVar.f7176e[i9];
                Annotation[] annotationArr2 = aVar.f7175d[i9];
                boolean z2 = i9 == i8;
                if (annotationArr2 != null) {
                    int length2 = annotationArr2.length;
                    c0Var = null;
                    int i10 = 0;
                    while (i10 < length2) {
                        Annotation annotation2 = annotationArr2[i10];
                        int i11 = length;
                        if (annotation2 instanceof l.o0.v) {
                            aVar.c(i9, type);
                            if (!aVar.f7184m) {
                                if (!aVar.f7180i) {
                                    if (!aVar.f7181j) {
                                        if (!aVar.f7182k) {
                                            if (!aVar.f7183l) {
                                                if (aVar.r != null) {
                                                    throw l0.l(aVar.b, i9, "@Url cannot be used with @%s URL", aVar.n);
                                                }
                                                aVar.f7184m = true;
                                                if (type != i.x.class && type != String.class && type != URI.class && (!(type instanceof Class) || !"android.net.Uri".equals(((Class) type).getName()))) {
                                                    throw l0.l(aVar.b, i9, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
                                                }
                                                c0Var2 = new c0.l(aVar.b, i9);
                                                i4 = i8;
                                                i5 = i10;
                                                i7 = length2;
                                            } else {
                                                throw l0.l(aVar.b, i9, "A @Url parameter must not come after a @QueryMap.", new Object[0]);
                                            }
                                        } else {
                                            throw l0.l(aVar.b, i9, "A @Url parameter must not come after a @QueryName.", new Object[0]);
                                        }
                                    } else {
                                        throw l0.l(aVar.b, i9, "A @Url parameter must not come after a @Query.", new Object[0]);
                                    }
                                } else {
                                    throw l0.l(aVar.b, i9, "@Path parameters may not be used with @Url.", new Object[0]);
                                }
                            } else {
                                throw l0.l(aVar.b, i9, "Multiple @Url method annotations found.", new Object[0]);
                            }
                        } else {
                            i4 = i8;
                            if (annotation2 instanceof l.o0.q) {
                                aVar.c(i9, type);
                                if (!aVar.f7181j) {
                                    if (!aVar.f7182k) {
                                        if (!aVar.f7183l) {
                                            if (!aVar.f7184m) {
                                                if (aVar.r == null) {
                                                    throw l0.l(aVar.b, i9, "@Path can only be used with relative url on @%s", aVar.n);
                                                }
                                                aVar.f7180i = true;
                                                l.o0.q qVar = (l.o0.q) annotation2;
                                                String value2 = qVar.value();
                                                if (f0.a.y.matcher(value2).matches()) {
                                                    if (!aVar.u.contains(value2)) {
                                                        throw l0.l(aVar.b, i9, "URL \"%s\" does not contain \"{%s}\".", aVar.r, value2);
                                                    }
                                                    i5 = i10;
                                                    i6 = length2;
                                                    eVar = new c0.g<>(aVar.b, i9, value2, aVar.a.f(type, annotationArr2), qVar.encoded());
                                                } else {
                                                    throw l0.l(aVar.b, i9, "@Path parameter name must match %s. Found: %s", f0.a.x.pattern(), value2);
                                                }
                                            } else {
                                                throw l0.l(aVar.b, i9, "@Path parameters may not be used with @Url.", new Object[0]);
                                            }
                                        } else {
                                            throw l0.l(aVar.b, i9, "A @Path parameter must not come after a @QueryMap.", new Object[0]);
                                        }
                                    } else {
                                        throw l0.l(aVar.b, i9, "A @Path parameter must not come after a @QueryName.", new Object[0]);
                                    }
                                } else {
                                    throw l0.l(aVar.b, i9, "A @Path parameter must not come after a @Query.", new Object[0]);
                                }
                            } else {
                                i5 = i10;
                                i6 = length2;
                                if (annotation2 instanceof l.o0.r) {
                                    aVar.c(i9, type);
                                    l.o0.r rVar = (l.o0.r) annotation2;
                                    String value3 = rVar.value();
                                    boolean encoded = rVar.encoded();
                                    Class<?> f2 = l0.f(type);
                                    aVar.f7181j = true;
                                    if (Iterable.class.isAssignableFrom(f2)) {
                                        if (type instanceof ParameterizedType) {
                                            eVar = new a0(new c0.h(value3, aVar.a.f(l0.e(0, (ParameterizedType) type), annotationArr2), encoded));
                                        } else {
                                            throw l0.l(aVar.b, i9, f.b.a.a.a.I(f2, new StringBuilder(), " must include generic type (e.g., ", "<String>)"), new Object[0]);
                                        }
                                    } else if (f2.isArray()) {
                                        eVar = new b0(new c0.h(value3, aVar.a.f(f0.a.a(f2.getComponentType()), annotationArr2), encoded));
                                    } else {
                                        bVar = new c0.h<>(value3, aVar.a.f(type, annotationArr2), encoded);
                                        i7 = i6;
                                        c0Var2 = bVar;
                                    }
                                } else if (annotation2 instanceof l.o0.t) {
                                    aVar.c(i9, type);
                                    boolean encoded2 = ((l.o0.t) annotation2).encoded();
                                    Class<?> f3 = l0.f(type);
                                    aVar.f7182k = true;
                                    if (Iterable.class.isAssignableFrom(f3)) {
                                        if (type instanceof ParameterizedType) {
                                            eVar = new a0(new c0.j(aVar.a.f(l0.e(0, (ParameterizedType) type), annotationArr2), encoded2));
                                        } else {
                                            throw l0.l(aVar.b, i9, f.b.a.a.a.I(f3, new StringBuilder(), " must include generic type (e.g., ", "<String>)"), new Object[0]);
                                        }
                                    } else if (f3.isArray()) {
                                        eVar = new b0(new c0.j(aVar.a.f(f0.a.a(f3.getComponentType()), annotationArr2), encoded2));
                                    } else {
                                        cVar = new c0.j<>(aVar.a.f(type, annotationArr2), encoded2);
                                        i7 = i6;
                                        c0Var2 = cVar;
                                    }
                                } else {
                                    if (annotation2 instanceof l.o0.s) {
                                        aVar.c(i9, type);
                                        Class<?> f4 = l0.f(type);
                                        aVar.f7183l = true;
                                        if (Map.class.isAssignableFrom(f4)) {
                                            Type g2 = l0.g(type, f4, Map.class);
                                            if (g2 instanceof ParameterizedType) {
                                                ParameterizedType parameterizedType = (ParameterizedType) g2;
                                                Type e3 = l0.e(0, parameterizedType);
                                                if (String.class != e3) {
                                                    throw l0.l(aVar.b, i9, "@QueryMap keys must be of type String: " + e3, new Object[0]);
                                                }
                                                cVar = new c0.i<>(aVar.b, i9, aVar.a.f(l0.e(1, parameterizedType), annotationArr2), ((l.o0.s) annotation2).encoded());
                                            } else {
                                                throw l0.l(aVar.b, i9, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                                            }
                                        } else {
                                            throw l0.l(aVar.b, i9, "@QueryMap parameter type must be Map.", new Object[0]);
                                        }
                                    } else if (annotation2 instanceof l.o0.i) {
                                        aVar.c(i9, type);
                                        String value4 = ((l.o0.i) annotation2).value();
                                        Class<?> f5 = l0.f(type);
                                        if (Iterable.class.isAssignableFrom(f5)) {
                                            if (type instanceof ParameterizedType) {
                                                eVar = new a0(new c0.d(value4, aVar.a.f(l0.e(0, (ParameterizedType) type), annotationArr2)));
                                            } else {
                                                throw l0.l(aVar.b, i9, f.b.a.a.a.I(f5, new StringBuilder(), " must include generic type (e.g., ", "<String>)"), new Object[0]);
                                            }
                                        } else if (f5.isArray()) {
                                            eVar = new b0(new c0.d(value4, aVar.a.f(f0.a.a(f5.getComponentType()), annotationArr2)));
                                        } else {
                                            cVar = new c0.d<>(value4, aVar.a.f(type, annotationArr2));
                                        }
                                    } else if (annotation2 instanceof l.o0.c) {
                                        aVar.c(i9, type);
                                        if (aVar.p) {
                                            l.o0.c cVar2 = (l.o0.c) annotation2;
                                            String value5 = cVar2.value();
                                            boolean encoded3 = cVar2.encoded();
                                            aVar.f7177f = true;
                                            Class<?> f6 = l0.f(type);
                                            if (Iterable.class.isAssignableFrom(f6)) {
                                                if (type instanceof ParameterizedType) {
                                                    eVar = new a0(new c0.b(value5, aVar.a.f(l0.e(0, (ParameterizedType) type), annotationArr2), encoded3));
                                                } else {
                                                    throw l0.l(aVar.b, i9, f.b.a.a.a.I(f6, new StringBuilder(), " must include generic type (e.g., ", "<String>)"), new Object[0]);
                                                }
                                            } else if (f6.isArray()) {
                                                eVar = new b0(new c0.b(value5, aVar.a.f(f0.a.a(f6.getComponentType()), annotationArr2), encoded3));
                                            } else {
                                                bVar = new c0.b<>(value5, aVar.a.f(type, annotationArr2), encoded3);
                                                i7 = i6;
                                                c0Var2 = bVar;
                                            }
                                        } else {
                                            throw l0.l(aVar.b, i9, "@Field parameters can only be used with form encoding.", new Object[0]);
                                        }
                                    } else if (annotation2 instanceof l.o0.d) {
                                        aVar.c(i9, type);
                                        if (aVar.p) {
                                            Class<?> f7 = l0.f(type);
                                            if (Map.class.isAssignableFrom(f7)) {
                                                Type g3 = l0.g(type, f7, Map.class);
                                                if (g3 instanceof ParameterizedType) {
                                                    ParameterizedType parameterizedType2 = (ParameterizedType) g3;
                                                    Type e4 = l0.e(0, parameterizedType2);
                                                    if (String.class != e4) {
                                                        throw l0.l(aVar.b, i9, "@FieldMap keys must be of type String: " + e4, new Object[0]);
                                                    }
                                                    l<T, String> f8 = aVar.a.f(l0.e(1, parameterizedType2), annotationArr2);
                                                    aVar.f7177f = true;
                                                    cVar = new c0.c<>(aVar.b, i9, f8, ((l.o0.d) annotation2).encoded());
                                                } else {
                                                    throw l0.l(aVar.b, i9, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                                                }
                                            } else {
                                                throw l0.l(aVar.b, i9, "@FieldMap parameter type must be Map.", new Object[0]);
                                            }
                                        } else {
                                            throw l0.l(aVar.b, i9, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
                                        }
                                    } else if (annotation2 instanceof l.o0.o) {
                                        aVar.c(i9, type);
                                        if (aVar.q) {
                                            l.o0.o oVar = (l.o0.o) annotation2;
                                            aVar.f7178g = true;
                                            String value6 = oVar.value();
                                            Class<?> f9 = l0.f(type);
                                            if (value6.isEmpty()) {
                                                if (Iterable.class.isAssignableFrom(f9)) {
                                                    if (type instanceof ParameterizedType) {
                                                        if (a0.c.class.isAssignableFrom(l0.f(l0.e(0, (ParameterizedType) type)))) {
                                                            b0Var = new a0(c0.k.a);
                                                        } else {
                                                            throw l0.l(aVar.b, i9, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                                                        }
                                                    } else {
                                                        throw l0.l(aVar.b, i9, f.b.a.a.a.I(f9, new StringBuilder(), " must include generic type (e.g., ", "<String>)"), new Object[0]);
                                                    }
                                                } else if (f9.isArray()) {
                                                    if (a0.c.class.isAssignableFrom(f9.getComponentType())) {
                                                        b0Var = new b0(c0.k.a);
                                                    } else {
                                                        throw l0.l(aVar.b, i9, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                                                    }
                                                } else if (a0.c.class.isAssignableFrom(f9)) {
                                                    eVar = c0.k.a;
                                                } else {
                                                    throw l0.l(aVar.b, i9, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                                                }
                                                i7 = i6;
                                                c0Var2 = b0Var;
                                            } else {
                                                i7 = i6;
                                                i.w c2 = i.w.b.c("Content-Disposition", f.b.a.a.a.g("form-data; name=\"", value6, "\""), "Content-Transfer-Encoding", oVar.encoding());
                                                if (Iterable.class.isAssignableFrom(f9)) {
                                                    if (type instanceof ParameterizedType) {
                                                        Type e5 = l0.e(0, (ParameterizedType) type);
                                                        if (!a0.c.class.isAssignableFrom(l0.f(e5))) {
                                                            c0Var2 = new a0(new c0.e(aVar.b, i9, c2, aVar.a.d(e5, annotationArr2, aVar.f7174c)));
                                                        } else {
                                                            throw l0.l(aVar.b, i9, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                                                        }
                                                    } else {
                                                        throw l0.l(aVar.b, i9, f.b.a.a.a.I(f9, new StringBuilder(), " must include generic type (e.g., ", "<String>)"), new Object[0]);
                                                    }
                                                } else if (f9.isArray()) {
                                                    Class<?> a = f0.a.a(f9.getComponentType());
                                                    if (!a0.c.class.isAssignableFrom(a)) {
                                                        c0Var2 = new b0(new c0.e(aVar.b, i9, c2, aVar.a.d(a, annotationArr2, aVar.f7174c)));
                                                    } else {
                                                        throw l0.l(aVar.b, i9, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                                                    }
                                                } else if (!a0.c.class.isAssignableFrom(f9)) {
                                                    eVar = new c0.e<>(aVar.b, i9, c2, aVar.a.d(type, annotationArr2, aVar.f7174c));
                                                    c0Var2 = eVar;
                                                } else {
                                                    throw l0.l(aVar.b, i9, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                                                }
                                            }
                                        } else {
                                            throw l0.l(aVar.b, i9, "@Part parameters can only be used with multipart encoding.", new Object[0]);
                                        }
                                    } else {
                                        i7 = i6;
                                        if (annotation2 instanceof l.o0.p) {
                                            aVar.c(i9, type);
                                            if (aVar.q) {
                                                aVar.f7178g = true;
                                                Class<?> f10 = l0.f(type);
                                                if (Map.class.isAssignableFrom(f10)) {
                                                    Type g4 = l0.g(type, f10, Map.class);
                                                    if (g4 instanceof ParameterizedType) {
                                                        ParameterizedType parameterizedType3 = (ParameterizedType) g4;
                                                        Type e6 = l0.e(0, parameterizedType3);
                                                        if (String.class != e6) {
                                                            throw l0.l(aVar.b, i9, "@PartMap keys must be of type String: " + e6, new Object[0]);
                                                        }
                                                        Type e7 = l0.e(1, parameterizedType3);
                                                        if (!a0.c.class.isAssignableFrom(l0.f(e7))) {
                                                            c0Var2 = new c0.f<>(aVar.b, i9, aVar.a.d(e7, annotationArr2, aVar.f7174c), ((l.o0.p) annotation2).encoding());
                                                        } else {
                                                            throw l0.l(aVar.b, i9, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                                                        }
                                                    } else {
                                                        throw l0.l(aVar.b, i9, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                                                    }
                                                } else {
                                                    throw l0.l(aVar.b, i9, "@PartMap parameter type must be Map.", new Object[0]);
                                                }
                                            } else {
                                                throw l0.l(aVar.b, i9, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
                                            }
                                        } else if (annotation2 instanceof l.o0.a) {
                                            aVar.c(i9, type);
                                            if (!aVar.p && !aVar.q) {
                                                if (!aVar.f7179h) {
                                                    try {
                                                        l<T, i.g0> d2 = aVar.a.d(type, annotationArr2, aVar.f7174c);
                                                        aVar.f7179h = true;
                                                        c0Var2 = new c0.a<>(aVar.b, i9, d2);
                                                    } catch (RuntimeException e8) {
                                                        throw l0.m(aVar.b, e8, i9, "Unable to create @Body converter for %s", type);
                                                    }
                                                } else {
                                                    throw l0.l(aVar.b, i9, "Multiple @Body method annotations found.", new Object[0]);
                                                }
                                            } else {
                                                throw l0.l(aVar.b, i9, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
                                            }
                                        } else {
                                            c0Var2 = null;
                                        }
                                    }
                                    i7 = i6;
                                    c0Var2 = cVar;
                                }
                            }
                            i7 = i6;
                            c0Var2 = eVar;
                        }
                        if (c0Var2 != null) {
                            if (c0Var != null) {
                                throw l0.l(aVar.b, i9, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                            }
                            c0Var = c0Var2;
                        }
                        i10 = i5 + 1;
                        length = i11;
                        i8 = i4;
                        length2 = i7;
                    }
                    i2 = length;
                    i3 = i8;
                } else {
                    i2 = length;
                    i3 = i8;
                    c0Var = null;
                }
                if (c0Var == null) {
                    if (z2) {
                        try {
                            if (l0.f(type) == h.m.a.class) {
                                aVar.w = true;
                                c0Var = null;
                            }
                        } catch (NoClassDefFoundError unused) {
                        }
                    }
                    throw l0.l(aVar.b, i9, "No Retrofit annotation found.", new Object[0]);
                }
                c0VarArr[i9] = c0Var;
                i9++;
                length = i2;
                i8 = i3;
            }
            if (aVar.r != null || aVar.f7184m) {
                if (!aVar.p && !aVar.q && !aVar.o && aVar.f7179h) {
                    throw l0.j(aVar.b, "Non-body HTTP method cannot contain @Body.", new Object[0]);
                }
                if (aVar.p && !aVar.f7177f) {
                    throw l0.j(aVar.b, "Form-encoded method must contain at least one @Field.", new Object[0]);
                }
                if (aVar.q && !aVar.f7178g) {
                    throw l0.j(aVar.b, "Multipart method must contain at least one @Part.", new Object[0]);
                }
                f0 f0Var = new f0(aVar);
                Type genericReturnType2 = method.getGenericReturnType();
                if (!l0.h(genericReturnType2)) {
                    if (genericReturnType2 != Void.TYPE) {
                        boolean z3 = f0Var.f7173k;
                        Annotation[] annotations = method.getAnnotations();
                        if (z3) {
                            Type type2 = ((ParameterizedType) method.getGenericParameterTypes()[genericParameterTypes.length - 1]).getActualTypeArguments()[0];
                            if (type2 instanceof WildcardType) {
                                type2 = ((WildcardType) type2).getLowerBounds()[0];
                            }
                            if (l0.f(type2) == g0.class && (type2 instanceof ParameterizedType)) {
                                type2 = l0.e(0, (ParameterizedType) type2);
                                z = true;
                            } else {
                                z = false;
                            }
                            genericReturnType = new l0.b(null, d.class, type2);
                            if (!l0.i(annotations, j0.class)) {
                                Annotation[] annotationArr3 = new Annotation[annotations.length + 1];
                                annotationArr3[0] = k0.a;
                                System.arraycopy(annotations, 0, annotationArr3, 1, annotations.length);
                                annotations = annotationArr3;
                            }
                        } else {
                            genericReturnType = method.getGenericReturnType();
                            z = false;
                        }
                        try {
                            e<?, ?> a2 = h0Var.a(genericReturnType, annotations);
                            Type a3 = a2.a();
                            if (a3 != i.h0.class) {
                                if (a3 != g0.class) {
                                    if (f0Var.f7165c.equals("HEAD") && !Void.class.equals(a3)) {
                                        throw l0.j(method, "HEAD method must use Void as response type.", new Object[0]);
                                    }
                                    try {
                                        l<i.i0, T> e9 = h0Var.e(a3, method.getAnnotations());
                                        f.a aVar3 = h0Var.b;
                                        if (z3) {
                                            if (z) {
                                                return new o.c(f0Var, aVar3, e9, a2);
                                            }
                                            return new o.b(f0Var, aVar3, e9, a2, false);
                                        }
                                        return new o.a(f0Var, aVar3, e9, a2);
                                    } catch (RuntimeException e10) {
                                        throw l0.k(method, e10, "Unable to create converter for %s", a3);
                                    }
                                }
                                throw l0.j(method, "Response must include generic type (e.g., Response<String>)", new Object[0]);
                            }
                            StringBuilder o = f.b.a.a.a.o("'");
                            o.append(l0.f(a3).getName());
                            o.append("' is not a valid response body type. Did you mean ResponseBody?");
                            throw l0.j(method, o.toString(), new Object[0]);
                        } catch (RuntimeException e11) {
                            throw l0.k(method, e11, "Unable to create call adapter for %s", genericReturnType);
                        }
                    }
                    throw l0.j(method, "Service methods cannot return void.", new Object[0]);
                }
                throw l0.j(method, "Method return type must not include a type variable or wildcard: %s", genericReturnType2);
            }
            throw l0.j(aVar.b, "Missing either @%s URL or @Url parameter.", aVar.n);
        }
        throw l0.j(aVar.b, "HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
    }
}
