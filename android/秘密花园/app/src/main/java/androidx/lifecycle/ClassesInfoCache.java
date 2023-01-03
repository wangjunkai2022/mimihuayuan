package androidx.lifecycle;

import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import f.b.a.a.a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ClassesInfoCache {
    public static final int CALL_TYPE_NO_ARG = 0;
    public static final int CALL_TYPE_PROVIDER = 1;
    public static final int CALL_TYPE_PROVIDER_WITH_EVENT = 2;
    public static ClassesInfoCache sInstance = new ClassesInfoCache();
    public final Map<Class, CallbackInfo> mCallbackMap = new HashMap();
    public final Map<Class, Boolean> mHasLifecycleMethods = new HashMap();

    /* loaded from: classes.dex */
    public static class CallbackInfo {
        public final Map<Lifecycle.Event, List<MethodReference>> mEventToHandlers = new HashMap();
        public final Map<MethodReference, Lifecycle.Event> mHandlerToEvent;

        public CallbackInfo(Map<MethodReference, Lifecycle.Event> map) {
            this.mHandlerToEvent = map;
            for (Map.Entry<MethodReference, Lifecycle.Event> entry : map.entrySet()) {
                Lifecycle.Event value = entry.getValue();
                List<MethodReference> list = this.mEventToHandlers.get(value);
                if (list == null) {
                    list = new ArrayList<>();
                    this.mEventToHandlers.put(value, list);
                }
                list.add(entry.getKey());
            }
        }

        public static void invokeMethodsForEvent(List<MethodReference> list, LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).invokeCallback(lifecycleOwner, event, obj);
                }
            }
        }

        public void invokeCallbacks(LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            invokeMethodsForEvent(this.mEventToHandlers.get(event), lifecycleOwner, event, obj);
            invokeMethodsForEvent(this.mEventToHandlers.get(Lifecycle.Event.ON_ANY), lifecycleOwner, event, obj);
        }
    }

    /* loaded from: classes.dex */
    public static class MethodReference {
        public final int mCallType;
        public final Method mMethod;

        public MethodReference(int i2, Method method) {
            this.mCallType = i2;
            this.mMethod = method;
            method.setAccessible(true);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || MethodReference.class != obj.getClass()) {
                return false;
            }
            MethodReference methodReference = (MethodReference) obj;
            if (this.mCallType != methodReference.mCallType || !this.mMethod.getName().equals(methodReference.mMethod.getName())) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return this.mMethod.getName().hashCode() + (this.mCallType * 31);
        }

        public void invokeCallback(LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            try {
                int i2 = this.mCallType;
                if (i2 == 0) {
                    this.mMethod.invoke(obj, new Object[0]);
                } else if (i2 == 1) {
                    this.mMethod.invoke(obj, lifecycleOwner);
                } else if (i2 == 2) {
                    this.mMethod.invoke(obj, lifecycleOwner, event);
                }
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException("Failed to call observer method", e3.getCause());
            }
        }
    }

    private CallbackInfo createInfo(Class cls, @Nullable Method[] methodArr) {
        int i2;
        CallbackInfo info;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (!(superclass == null || (info = getInfo(superclass)) == null)) {
            hashMap.putAll(info.mHandlerToEvent);
        }
        for (Class cls2 : cls.getInterfaces()) {
            for (Map.Entry<MethodReference, Lifecycle.Event> entry : getInfo(cls2).mHandlerToEvent.entrySet()) {
                verifyAndPutHandler(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = getDeclaredMethods(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            OnLifecycleEvent onLifecycleEvent = (OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class);
            if (onLifecycleEvent != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i2 = 0;
                } else if (parameterTypes[0].isAssignableFrom(LifecycleOwner.class)) {
                    i2 = 1;
                } else {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                }
                Lifecycle.Event value = onLifecycleEvent.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(Lifecycle.Event.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    } else if (value == Lifecycle.Event.ON_ANY) {
                        i2 = 2;
                    } else {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                }
                if (parameterTypes.length <= 2) {
                    verifyAndPutHandler(hashMap, new MethodReference(i2, method), value, cls);
                    z = true;
                } else {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
            }
        }
        CallbackInfo callbackInfo = new CallbackInfo(hashMap);
        this.mCallbackMap.put(cls, callbackInfo);
        this.mHasLifecycleMethods.put(cls, Boolean.valueOf(z));
        return callbackInfo;
    }

    private Method[] getDeclaredMethods(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e2) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e2);
        }
    }

    private void verifyAndPutHandler(Map<MethodReference, Lifecycle.Event> map, MethodReference methodReference, Lifecycle.Event event, Class cls) {
        Lifecycle.Event event2 = map.get(methodReference);
        if (event2 != null && event != event2) {
            Method method = methodReference.mMethod;
            StringBuilder o = a.o("Method ");
            o.append(method.getName());
            o.append(" in ");
            o.append(cls.getName());
            o.append(" already declared with different @OnLifecycleEvent value: previous value ");
            o.append(event2);
            o.append(", new value ");
            o.append(event);
            throw new IllegalArgumentException(o.toString());
        } else if (event2 == null) {
            map.put(methodReference, event);
        }
    }

    public CallbackInfo getInfo(Class cls) {
        CallbackInfo callbackInfo = this.mCallbackMap.get(cls);
        if (callbackInfo != null) {
            return callbackInfo;
        }
        return createInfo(cls, null);
    }

    public boolean hasLifecycleMethods(Class cls) {
        Boolean bool = this.mHasLifecycleMethods.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] declaredMethods = getDeclaredMethods(cls);
        for (Method method : declaredMethods) {
            if (((OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class)) != null) {
                createInfo(cls, declaredMethods);
                return true;
            }
        }
        this.mHasLifecycleMethods.put(cls, Boolean.FALSE);
        return false;
    }
}
