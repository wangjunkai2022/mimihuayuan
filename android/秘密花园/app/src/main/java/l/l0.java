package l;

import i.i0;
import i.j0;
import j.g;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: Utils.java */
/* loaded from: classes2.dex */
public final class l0 {
    public static final Type[] a = new Type[0];

    /* compiled from: Utils.java */
    /* loaded from: classes2.dex */
    public static final class a implements GenericArrayType {
        public final Type a;

        public a(Type type) {
            this.a = type;
        }

        @Override // java.lang.Object
        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && l0.c(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.a;
        }

        @Override // java.lang.Object
        public int hashCode() {
            return this.a.hashCode();
        }

        @Override // java.lang.Object
        public String toString() {
            return l0.p(this.a) + "[]";
        }
    }

    /* compiled from: Utils.java */
    /* loaded from: classes2.dex */
    public static final class b implements ParameterizedType {
        public final Type a;
        public final Type b;

        /* renamed from: c  reason: collision with root package name */
        public final Type[] f7195c;

        public b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                if ((type == null) != (((Class) type2).getEnclosingClass() != null ? false : true)) {
                    throw new IllegalArgumentException();
                }
            }
            for (Type type3 : typeArr) {
                Objects.requireNonNull(type3, "typeArgument == null");
                l0.b(type3);
            }
            this.a = type;
            this.b = type2;
            this.f7195c = (Type[]) typeArr.clone();
        }

        @Override // java.lang.Object
        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && l0.c(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f7195c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.b;
        }

        @Override // java.lang.Object
        public int hashCode() {
            int hashCode = Arrays.hashCode(this.f7195c) ^ this.b.hashCode();
            Type type = this.a;
            return hashCode ^ (type != null ? type.hashCode() : 0);
        }

        @Override // java.lang.Object
        public String toString() {
            Type[] typeArr = this.f7195c;
            if (typeArr.length == 0) {
                return l0.p(this.b);
            }
            StringBuilder sb = new StringBuilder((typeArr.length + 1) * 30);
            sb.append(l0.p(this.b));
            sb.append("<");
            sb.append(l0.p(this.f7195c[0]));
            for (int i2 = 1; i2 < this.f7195c.length; i2++) {
                sb.append(", ");
                sb.append(l0.p(this.f7195c[i2]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* compiled from: Utils.java */
    /* loaded from: classes2.dex */
    public static final class c implements WildcardType {
        public final Type a;
        public final Type b;

        public c(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length > 1) {
                throw new IllegalArgumentException();
            } else if (typeArr.length != 1) {
                throw new IllegalArgumentException();
            } else if (typeArr2.length == 1) {
                if (typeArr2[0] != null) {
                    l0.b(typeArr2[0]);
                    if (typeArr[0] == Object.class) {
                        this.b = typeArr2[0];
                        this.a = Object.class;
                        return;
                    }
                    throw new IllegalArgumentException();
                }
                throw null;
            } else if (typeArr[0] != null) {
                l0.b(typeArr[0]);
                this.b = null;
                this.a = typeArr[0];
            } else {
                throw null;
            }
        }

        @Override // java.lang.Object
        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && l0.c(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.b;
            return type != null ? new Type[]{type} : l0.a;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.a};
        }

        @Override // java.lang.Object
        public int hashCode() {
            Type type = this.b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.a.hashCode() + 31);
        }

        @Override // java.lang.Object
        public String toString() {
            if (this.b != null) {
                StringBuilder o = f.b.a.a.a.o("? super ");
                o.append(l0.p(this.b));
                return o.toString();
            } else if (this.a == Object.class) {
                return "?";
            } else {
                StringBuilder o2 = f.b.a.a.a.o("? extends ");
                o2.append(l0.p(this.a));
                return o2.toString();
            }
        }
    }

    public static i0 a(i0 i0Var) throws IOException {
        g gVar = new g();
        i0Var.G().w(gVar);
        return new j0(gVar, i0Var.E(), i0Var.g());
    }

    public static void b(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException();
        }
    }

    public static boolean c(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type ownerType2 = parameterizedType2.getOwnerType();
            if ((ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments())) {
                return true;
            }
            return false;
        } else if (type instanceof GenericArrayType) {
            if (!(type2 instanceof GenericArrayType)) {
                return false;
            }
            return c(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
        } else if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            if (!Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) || !Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds())) {
                return false;
            }
            return true;
        } else if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        } else {
            TypeVariable typeVariable = (TypeVariable) type;
            TypeVariable typeVariable2 = (TypeVariable) type2;
            if (typeVariable.getGenericDeclaration() != typeVariable2.getGenericDeclaration() || !typeVariable.getName().equals(typeVariable2.getName())) {
                return false;
            }
            return true;
        }
    }

    public static Type d(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (interfaces[i2] == cls2) {
                    return cls.getGenericInterfaces()[i2];
                }
                if (cls2.isAssignableFrom(interfaces[i2])) {
                    return d(cls.getGenericInterfaces()[i2], interfaces[i2], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<? super Object> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return d(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static Type e(int i2, ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (i2 < 0 || i2 >= actualTypeArguments.length) {
            StringBuilder p = f.b.a.a.a.p("Index ", i2, " not in range [0,");
            p.append(actualTypeArguments.length);
            p.append(") for ");
            p.append(parameterizedType);
            throw new IllegalArgumentException(p.toString());
        }
        Type type = actualTypeArguments[i2];
        return type instanceof WildcardType ? ((WildcardType) type).getUpperBounds()[0] : type;
    }

    public static Class<?> f(Type type) {
        Objects.requireNonNull(type, "type == null");
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return (Class) rawType;
            }
            throw new IllegalArgumentException();
        } else if (type instanceof GenericArrayType) {
            return Array.newInstance(f(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        } else {
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            if (type instanceof WildcardType) {
                return f(((WildcardType) type).getUpperBounds()[0]);
            }
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
        }
    }

    public static Type g(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return n(type, cls, d(type, cls, cls2));
        }
        throw new IllegalArgumentException();
    }

    public static boolean h(Type type) {
        String str;
        if (type instanceof Class) {
            return false;
        }
        if (type instanceof ParameterizedType) {
            for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
                if (h(type2)) {
                    return true;
                }
            }
            return false;
        } else if (type instanceof GenericArrayType) {
            return h(((GenericArrayType) type).getGenericComponentType());
        } else {
            if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
                return true;
            }
            if (type == null) {
                str = "null";
            } else {
                str = type.getClass().getName();
            }
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + str);
        }
    }

    public static boolean i(Annotation[] annotationArr, Class<? extends Annotation> cls) {
        for (Annotation annotation : annotationArr) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    public static RuntimeException j(Method method, String str, Object... objArr) {
        return k(method, null, str, objArr);
    }

    public static RuntimeException k(Method method, Throwable th, String str, Object... objArr) {
        StringBuilder r = f.b.a.a.a.r(String.format(str, objArr), "\n    for method ");
        r.append(method.getDeclaringClass().getSimpleName());
        r.append(".");
        r.append(method.getName());
        return new IllegalArgumentException(r.toString(), th);
    }

    public static RuntimeException l(Method method, int i2, String str, Object... objArr) {
        StringBuilder r = f.b.a.a.a.r(str, " (parameter #");
        r.append(i2 + 1);
        r.append(")");
        return j(method, r.toString(), objArr);
    }

    public static RuntimeException m(Method method, Throwable th, int i2, String str, Object... objArr) {
        StringBuilder r = f.b.a.a.a.r(str, " (parameter #");
        r.append(i2 + 1);
        r.append(")");
        return k(method, th, r.toString(), objArr);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:0:?, code lost:
        r10 = r10;
     */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0043 A[LOOP:0: B:2:0x0000->B:23:0x0043, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0042 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.reflect.Type n(java.lang.reflect.Type r8, java.lang.Class<?> r9, java.lang.reflect.Type r10) {
        /*
        // Method dump skipped, instructions count: 258
        */
        throw new UnsupportedOperationException("Method not decompiled: l.l0.n(java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type):java.lang.reflect.Type");
    }

    public static void o(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        } else if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        } else if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    public static String p(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
