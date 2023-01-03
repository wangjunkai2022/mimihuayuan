package androidx.transition;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import androidx.collection.ArrayMap;
import androidx.core.content.res.TypedArrayUtils;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import f.b.a.a.a;
import java.io.IOException;
import java.lang.reflect.Constructor;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class TransitionInflater {
    public final Context mContext;
    public static final Class<?>[] CONSTRUCTOR_SIGNATURE = {Context.class, AttributeSet.class};
    public static final ArrayMap<String, Constructor> CONSTRUCTORS = new ArrayMap<>();

    public TransitionInflater(@NonNull Context context) {
        this.mContext = context;
    }

    private Object createCustom(AttributeSet attributeSet, Class cls, String str) {
        Object newInstance;
        Class<? extends U> asSubclass;
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        if (attributeValue != null) {
            try {
                synchronized (CONSTRUCTORS) {
                    Constructor constructor = CONSTRUCTORS.get(attributeValue);
                    if (constructor == null && (asSubclass = this.mContext.getClassLoader().loadClass(attributeValue).asSubclass(cls)) != 0) {
                        constructor = asSubclass.getConstructor(CONSTRUCTOR_SIGNATURE);
                        constructor.setAccessible(true);
                        CONSTRUCTORS.put(attributeValue, constructor);
                    }
                    newInstance = constructor.newInstance(this.mContext, attributeSet);
                }
                return newInstance;
            } catch (Exception e2) {
                throw new InflateException("Could not instantiate " + cls + " class " + attributeValue, e2);
            }
        } else {
            throw new InflateException(a.f(str, " tag must have a 'class' attribute"));
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:80:0x0179, code lost:
        return r3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private androidx.transition.Transition createTransitionFromXml(org.xmlpull.v1.XmlPullParser r8, android.util.AttributeSet r9, androidx.transition.Transition r10) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
        // Method dump skipped, instructions count: 378
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.TransitionInflater.createTransitionFromXml(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, androidx.transition.Transition):androidx.transition.Transition");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0050, code lost:
        return r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private androidx.transition.TransitionManager createTransitionManagerFromXml(org.xmlpull.v1.XmlPullParser r5, android.util.AttributeSet r6, android.view.ViewGroup r7) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r4 = this;
            int r0 = r5.getDepth()
            r1 = 0
        L_0x0005:
            int r2 = r5.next()
            r3 = 3
            if (r2 != r3) goto L_0x0012
            int r3 = r5.getDepth()
            if (r3 <= r0) goto L_0x0050
        L_0x0012:
            r3 = 1
            if (r2 == r3) goto L_0x0050
            r3 = 2
            if (r2 == r3) goto L_0x0019
            goto L_0x0005
        L_0x0019:
            java.lang.String r2 = r5.getName()
            java.lang.String r3 = "transitionManager"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L_0x002b
            androidx.transition.TransitionManager r1 = new androidx.transition.TransitionManager
            r1.<init>()
            goto L_0x0005
        L_0x002b:
            java.lang.String r3 = "transition"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L_0x0039
            if (r1 == 0) goto L_0x0039
            r4.loadTransition(r6, r5, r7, r1)
            goto L_0x0005
        L_0x0039:
            java.lang.RuntimeException r6 = new java.lang.RuntimeException
            java.lang.String r7 = "Unknown scene name: "
            java.lang.StringBuilder r7 = f.b.a.a.a.o(r7)
            java.lang.String r5 = r5.getName()
            r7.append(r5)
            java.lang.String r5 = r7.toString()
            r6.<init>(r5)
            throw r6
        L_0x0050:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.TransitionInflater.createTransitionManagerFromXml(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.view.ViewGroup):androidx.transition.TransitionManager");
    }

    public static TransitionInflater from(Context context) {
        return new TransitionInflater(context);
    }

    private void getTargetIds(XmlPullParser xmlPullParser, AttributeSet attributeSet, Transition transition) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                if (xmlPullParser.getName().equals(AnimatedVectorDrawableCompat.TARGET)) {
                    TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, Styleable.TRANSITION_TARGET);
                    int namedResourceId = TypedArrayUtils.getNamedResourceId(obtainStyledAttributes, xmlPullParser, "targetId", 1, 0);
                    if (namedResourceId != 0) {
                        transition.addTarget(namedResourceId);
                    } else {
                        int namedResourceId2 = TypedArrayUtils.getNamedResourceId(obtainStyledAttributes, xmlPullParser, "excludeId", 2, 0);
                        if (namedResourceId2 != 0) {
                            transition.excludeTarget(namedResourceId2, true);
                        } else {
                            String namedString = TypedArrayUtils.getNamedString(obtainStyledAttributes, xmlPullParser, "targetName", 4);
                            if (namedString != null) {
                                transition.addTarget(namedString);
                            } else {
                                String namedString2 = TypedArrayUtils.getNamedString(obtainStyledAttributes, xmlPullParser, "excludeName", 5);
                                if (namedString2 != null) {
                                    transition.excludeTarget(namedString2, true);
                                } else {
                                    String namedString3 = TypedArrayUtils.getNamedString(obtainStyledAttributes, xmlPullParser, "excludeClass", 3);
                                    if (namedString3 != null) {
                                        try {
                                            transition.excludeTarget((Class) Class.forName(namedString3), true);
                                        } catch (ClassNotFoundException e2) {
                                            obtainStyledAttributes.recycle();
                                            throw new RuntimeException(a.f("Could not create ", namedString3), e2);
                                        }
                                    } else {
                                        String namedString4 = TypedArrayUtils.getNamedString(obtainStyledAttributes, xmlPullParser, "targetClass", 0);
                                        if (namedString4 != null) {
                                            transition.addTarget(Class.forName(namedString4));
                                        }
                                    }
                                }
                            }
                        }
                    }
                    obtainStyledAttributes.recycle();
                } else {
                    StringBuilder o = a.o("Unknown scene name: ");
                    o.append(xmlPullParser.getName());
                    throw new RuntimeException(o.toString());
                }
            }
        }
    }

    private void loadTransition(AttributeSet attributeSet, XmlPullParser xmlPullParser, ViewGroup viewGroup, TransitionManager transitionManager) throws Resources.NotFoundException {
        Scene scene;
        Transition inflateTransition;
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, Styleable.TRANSITION_MANAGER);
        int namedResourceId = TypedArrayUtils.getNamedResourceId(obtainStyledAttributes, xmlPullParser, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION, 2, -1);
        int namedResourceId2 = TypedArrayUtils.getNamedResourceId(obtainStyledAttributes, xmlPullParser, "fromScene", 0, -1);
        Scene scene2 = null;
        if (namedResourceId2 < 0) {
            scene = null;
        } else {
            scene = Scene.getSceneForLayout(viewGroup, namedResourceId2, this.mContext);
        }
        int namedResourceId3 = TypedArrayUtils.getNamedResourceId(obtainStyledAttributes, xmlPullParser, "toScene", 1, -1);
        if (namedResourceId3 >= 0) {
            scene2 = Scene.getSceneForLayout(viewGroup, namedResourceId3, this.mContext);
        }
        if (namedResourceId >= 0 && (inflateTransition = inflateTransition(namedResourceId)) != null) {
            if (scene2 == null) {
                throw new RuntimeException(a.J("No toScene for transition ID ", namedResourceId));
            } else if (scene == null) {
                transitionManager.setTransition(scene2, inflateTransition);
            } else {
                transitionManager.setTransition(scene, scene2, inflateTransition);
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:15:0x0000 */
    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: androidx.transition.TransitionInflater */
    /* JADX DEBUG: Multi-variable search result rejected for r5v0, resolved type: int */
    /* JADX DEBUG: Multi-variable search result rejected for r5v1, resolved type: android.content.res.XmlResourceParser */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [android.content.res.XmlResourceParser, org.xmlpull.v1.XmlPullParser] */
    public Transition inflateTransition(int i2) {
        try {
            i2 = this.mContext.getResources().getXml(i2);
            try {
                return createTransitionFromXml(i2, Xml.asAttributeSet(i2), null);
            } catch (IOException e2) {
                throw new InflateException(i2.getPositionDescription() + ": " + e2.getMessage(), e2);
            } catch (XmlPullParserException e3) {
                throw new InflateException(e3.getMessage(), e3);
            }
        } finally {
            i2.close();
        }
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:15:0x0000 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: androidx.transition.TransitionInflater */
    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: int */
    /* JADX DEBUG: Multi-variable search result rejected for r4v1, resolved type: android.content.res.XmlResourceParser */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [android.content.res.XmlResourceParser, org.xmlpull.v1.XmlPullParser] */
    public TransitionManager inflateTransitionManager(int i2, ViewGroup viewGroup) {
        try {
            i2 = this.mContext.getResources().getXml(i2);
            try {
                return createTransitionManagerFromXml(i2, Xml.asAttributeSet(i2), viewGroup);
            } catch (IOException e2) {
                InflateException inflateException = new InflateException(i2.getPositionDescription() + ": " + e2.getMessage());
                inflateException.initCause(e2);
                throw inflateException;
            } catch (XmlPullParserException e3) {
                InflateException inflateException2 = new InflateException(e3.getMessage());
                inflateException2.initCause(e3);
                throw inflateException2;
            }
        } finally {
            i2.close();
        }
    }
}
