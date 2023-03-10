package f.i.b.c0;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.NoSuchElementException;
/* compiled from: $Gson$Types.java */
/* loaded from: classes.dex */
public final class a {
    public static final Type[] a = new Type[0];

    /* compiled from: $Gson$Types.java */
    /* renamed from: f.i.b.c0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0093a implements GenericArrayType, Serializable {
        public final Type a;

        public C0093a(Type type) {
            this.a = a.a(type);
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && a.c(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.a;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return a.i(this.a) + "[]";
        }
    }

    /* compiled from: $Gson$Types.java */
    /* loaded from: classes.dex */
    public static final class b implements ParameterizedType, Serializable {
        public final Type a;
        public final Type b;

        /* renamed from: c  reason: collision with root package name */
        public final Type[] f6092c;

        public b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                boolean z = true;
                boolean z2 = Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null;
                if (type == null && !z2) {
                    z = false;
                }
                c.a.a.b.g.h.p(z);
            }
            this.a = type == null ? null : a.a(type);
            this.b = a.a(type2);
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.f6092c = typeArr2;
            int length = typeArr2.length;
            for (int i2 = 0; i2 < length; i2++) {
                c.a.a.b.g.h.u(this.f6092c[i2]);
                a.b(this.f6092c[i2]);
                Type[] typeArr3 = this.f6092c;
                typeArr3[i2] = a.a(typeArr3[i2]);
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && a.c(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f6092c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.b;
        }

        public int hashCode() {
            int hashCode = Arrays.hashCode(this.f6092c) ^ this.b.hashCode();
            Type type = this.a;
            return hashCode ^ (type != null ? type.hashCode() : 0);
        }

        public String toString() {
            int length = this.f6092c.length;
            if (length == 0) {
                return a.i(this.b);
            }
            StringBuilder sb = new StringBuilder((length + 1) * 30);
            sb.append(a.i(this.b));
            sb.append("<");
            sb.append(a.i(this.f6092c[0]));
            for (int i2 = 1; i2 < length; i2++) {
                sb.append(", ");
                sb.append(a.i(this.f6092c[i2]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* compiled from: $Gson$Types.java */
    /* loaded from: classes.dex */
    public static final class c implements WildcardType, Serializable {
        public final Type a;
        public final Type b;

        public c(Type[] typeArr, Type[] typeArr2) {
            c.a.a.b.g.h.p(typeArr2.length <= 1);
            c.a.a.b.g.h.p(typeArr.length == 1);
            if (typeArr2.length == 1) {
                c.a.a.b.g.h.u(typeArr2[0]);
                a.b(typeArr2[0]);
                c.a.a.b.g.h.p(typeArr[0] == Object.class);
                this.b = a.a(typeArr2[0]);
                this.a = Object.class;
                return;
            }
            c.a.a.b.g.h.u(typeArr[0]);
            a.b(typeArr[0]);
            this.b = null;
            this.a = a.a(typeArr[0]);
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && a.c(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.b;
            return type != null ? new Type[]{type} : a.a;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.a};
        }

        public int hashCode() {
            Type type = this.b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.a.hashCode() + 31);
        }

        public String toString() {
            if (this.b != null) {
                StringBuilder o = f.b.a.a.a.o("? super ");
                o.append(a.i(this.b));
                return o.toString();
            } else if (this.a == Object.class) {
                return "?";
            } else {
                StringBuilder o2 = f.b.a.a.a.o("? extends ");
                o2.append(a.i(this.a));
                return o2.toString();
            }
        }
    }

    public static Type a(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new C0093a(a(cls.getComponentType())) : cls;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        } else if (type instanceof GenericArrayType) {
            return new C0093a(((GenericArrayType) type).getGenericComponentType());
        } else {
            if (type instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                return new c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
            }
            return type;
        }
    }

    public static void b(Type type) {
        c.a.a.b.g.h.p(((type instanceof Class) && ((Class) type).isPrimitive()) ? false : true);
    }

    public static boolean c(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (type2 instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                ParameterizedType parameterizedType2 = (ParameterizedType) type2;
                Type ownerType = parameterizedType.getOwnerType();
                Type ownerType2 = parameterizedType2.getOwnerType();
                return (ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
            }
            return false;
        } else if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return c(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        } else if (type instanceof WildcardType) {
            if (type2 instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                WildcardType wildcardType2 = (WildcardType) type2;
                return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
            }
            return false;
        } else if ((type instanceof TypeVariable) && (type2 instanceof TypeVariable)) {
            TypeVariable typeVariable = (TypeVariable) type;
            TypeVariable typeVariable2 = (TypeVariable) type2;
            return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
        } else {
            return false;
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

    public static Class<?> e(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            c.a.a.b.g.h.p(rawType instanceof Class);
            return (Class) rawType;
        } else if (type instanceof GenericArrayType) {
            return Array.newInstance(e(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        } else {
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            if (type instanceof WildcardType) {
                return e(((WildcardType) type).getUpperBounds()[0]);
            }
            String name = type == null ? "null" : type.getClass().getName();
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + name);
        }
    }

    public static Type f(Type type, Class<?> cls, Class<?> cls2) {
        if (type instanceof WildcardType) {
            type = ((WildcardType) type).getUpperBounds()[0];
        }
        c.a.a.b.g.h.p(cls2.isAssignableFrom(cls));
        return g(type, cls, d(type, cls, cls2));
    }

    public static Type g(Type type, Class<?> cls, Type type2) {
        return h(type, cls, type2, new HashSet());
    }

    public static Type h(Type type, Class<?> cls, Type type2, Collection<TypeVariable> collection) {
        TypeVariable typeVariable;
        do {
            int i2 = 0;
            if (type2 instanceof TypeVariable) {
                typeVariable = (TypeVariable) type2;
                if (collection.contains(typeVariable)) {
                    return type2;
                }
                collection.add(typeVariable);
                GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
                Class cls2 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
                if (cls2 != null) {
                    Type d2 = d(type, cls, cls2);
                    if (d2 instanceof ParameterizedType) {
                        TypeVariable[] typeParameters = cls2.getTypeParameters();
                        int length = typeParameters.length;
                        while (i2 < length) {
                            if (typeVariable.equals(typeParameters[i2])) {
                                type2 = ((ParameterizedType) d2).getActualTypeArguments()[i2];
                                continue;
                            } else {
                                i2++;
                            }
                        }
                        throw new NoSuchElementException();
                    }
                }
                type2 = typeVariable;
                continue;
            } else {
                if (type2 instanceof Class) {
                    Class cls3 = (Class) type2;
                    if (cls3.isArray()) {
                        Class<?> componentType = cls3.getComponentType();
                        Type h2 = h(type, cls, componentType, collection);
                        return componentType == h2 ? cls3 : new C0093a(h2);
                    }
                }
                if (type2 instanceof GenericArrayType) {
                    GenericArrayType genericArrayType = (GenericArrayType) type2;
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    Type h3 = h(type, cls, genericComponentType, collection);
                    return genericComponentType == h3 ? genericArrayType : new C0093a(h3);
                } else if (type2 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type2;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type h4 = h(type, cls, ownerType, collection);
                    boolean z = h4 != ownerType;
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    int length2 = actualTypeArguments.length;
                    while (i2 < length2) {
                        Type h5 = h(type, cls, actualTypeArguments[i2], collection);
                        if (h5 != actualTypeArguments[i2]) {
                            if (!z) {
                                actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                z = true;
                            }
                            actualTypeArguments[i2] = h5;
                        }
                        i2++;
                    }
                    return z ? new b(h4, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
                } else {
                    boolean z2 = type2 instanceof WildcardType;
                    WildcardType wildcardType = type2;
                    if (z2) {
                        WildcardType wildcardType2 = (WildcardType) type2;
                        Type[] lowerBounds = wildcardType2.getLowerBounds();
                        Type[] upperBounds = wildcardType2.getUpperBounds();
                        if (lowerBounds.length == 1) {
                            Type h6 = h(type, cls, lowerBounds[0], collection);
                            wildcardType = wildcardType2;
                            if (h6 != lowerBounds[0]) {
                                return new c(new Type[]{Object.class}, h6 instanceof WildcardType ? ((WildcardType) h6).getLowerBounds() : new Type[]{h6});
                            }
                        } else {
                            wildcardType = wildcardType2;
                            if (upperBounds.length == 1) {
                                Type h7 = h(type, cls, upperBounds[0], collection);
                                wildcardType = wildcardType2;
                                if (h7 != upperBounds[0]) {
                                    return new c(h7 instanceof WildcardType ? ((WildcardType) h7).getUpperBounds() : new Type[]{h7}, a);
                                }
                            }
                        }
                    }
                    return wildcardType;
                }
            }
        } while (type2 != typeVariable);
        return type2;
    }

    public static String i(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
