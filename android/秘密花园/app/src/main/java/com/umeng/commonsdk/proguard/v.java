package com.umeng.commonsdk.proguard;

import f.b.a.a.a;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* compiled from: FieldMetaData.java */
/* loaded from: classes.dex */
public class v implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    public static Map<Class<? extends j>, Map<? extends q, v>> f3103d = new HashMap();
    public final String a;
    public final byte b;

    /* renamed from: c  reason: collision with root package name */
    public final w f3104c;

    public v(String str, byte b, w wVar) {
        this.a = str;
        this.b = b;
        this.f3104c = wVar;
    }

    public static void a(Class<? extends j> cls, Map<? extends q, v> map) {
        f3103d.put(cls, map);
    }

    public static Map<? extends q, v> a(Class<? extends j> cls) {
        if (!f3103d.containsKey(cls)) {
            try {
                cls.newInstance();
            } catch (IllegalAccessException e2) {
                StringBuilder o = a.o("IllegalAccessException for TBase class: ");
                o.append(cls.getName());
                o.append(", message: ");
                o.append(e2.getMessage());
                throw new RuntimeException(o.toString());
            } catch (InstantiationException e3) {
                StringBuilder o2 = a.o("InstantiationException for TBase class: ");
                o2.append(cls.getName());
                o2.append(", message: ");
                o2.append(e3.getMessage());
                throw new RuntimeException(o2.toString());
            }
        }
        return f3103d.get(cls);
    }
}
