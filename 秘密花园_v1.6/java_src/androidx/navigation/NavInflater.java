package androidx.navigation;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.NavigationRes;
import androidx.annotation.NonNull;
import androidx.navigation.NavArgument;
import androidx.navigation.NavOptions;
import f.b.a.a.a;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public final class NavInflater {
    public static final String APPLICATION_ID_PLACEHOLDER = "${applicationId}";
    public static final String TAG_ACTION = "action";
    public static final String TAG_ARGUMENT = "argument";
    public static final String TAG_DEEP_LINK = "deepLink";
    public static final String TAG_INCLUDE = "include";
    public static final ThreadLocal<TypedValue> sTmpValue = new ThreadLocal<>();
    public Context mContext;
    public NavigatorProvider mNavigatorProvider;

    public NavInflater(@NonNull Context context, @NonNull NavigatorProvider navigatorProvider) {
        this.mContext = context;
        this.mNavigatorProvider = navigatorProvider;
    }

    public static NavType checkNavType(TypedValue typedValue, NavType navType, NavType navType2, String str, String str2) throws XmlPullParserException {
        if (navType == null || navType == navType2) {
            return navType != null ? navType : navType2;
        }
        throw new XmlPullParserException("Type is " + str + " but found " + str2 + ": " + typedValue.data);
    }

    private void inflateAction(@NonNull Resources resources, @NonNull NavDestination navDestination, @NonNull AttributeSet attributeSet, XmlResourceParser xmlResourceParser, int i2) throws IOException, XmlPullParserException {
        int depth;
        TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.NavAction);
        int resourceId = obtainAttributes.getResourceId(R.styleable.NavAction_android_id, 0);
        NavAction navAction = new NavAction(obtainAttributes.getResourceId(R.styleable.NavAction_destination, 0));
        NavOptions.Builder builder = new NavOptions.Builder();
        builder.setLaunchSingleTop(obtainAttributes.getBoolean(R.styleable.NavAction_launchSingleTop, false));
        builder.setPopUpTo(obtainAttributes.getResourceId(R.styleable.NavAction_popUpTo, -1), obtainAttributes.getBoolean(R.styleable.NavAction_popUpToInclusive, false));
        builder.setEnterAnim(obtainAttributes.getResourceId(R.styleable.NavAction_enterAnim, -1));
        builder.setExitAnim(obtainAttributes.getResourceId(R.styleable.NavAction_exitAnim, -1));
        builder.setPopEnterAnim(obtainAttributes.getResourceId(R.styleable.NavAction_popEnterAnim, -1));
        builder.setPopExitAnim(obtainAttributes.getResourceId(R.styleable.NavAction_popExitAnim, -1));
        navAction.setNavOptions(builder.build());
        Bundle bundle = new Bundle();
        int depth2 = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || ((depth = xmlResourceParser.getDepth()) < depth2 && next == 3)) {
                break;
            } else if (next == 2 && depth <= depth2 && TAG_ARGUMENT.equals(xmlResourceParser.getName())) {
                inflateArgumentForBundle(resources, bundle, attributeSet, i2);
            }
        }
        if (!bundle.isEmpty()) {
            navAction.setDefaultArguments(bundle);
        }
        navDestination.putAction(resourceId, navAction);
        obtainAttributes.recycle();
    }

    @NonNull
    private NavArgument inflateArgument(@NonNull TypedArray typedArray, @NonNull Resources resources, int i2) throws XmlPullParserException {
        NavArgument.Builder builder = new NavArgument.Builder();
        builder.setIsNullable(typedArray.getBoolean(R.styleable.NavArgument_nullable, false));
        TypedValue typedValue = sTmpValue.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            sTmpValue.set(typedValue);
        }
        String string = typedArray.getString(R.styleable.NavArgument_argType);
        Object obj = null;
        NavType<Integer> fromArgType = string != null ? NavType.fromArgType(string, resources.getResourcePackageName(i2)) : null;
        if (typedArray.getValue(R.styleable.NavArgument_android_defaultValue, typedValue)) {
            NavType<Integer> navType = NavType.ReferenceType;
            if (fromArgType == navType) {
                int i3 = typedValue.resourceId;
                if (i3 != 0) {
                    obj = Integer.valueOf(i3);
                } else if (typedValue.type == 16 && typedValue.data == 0) {
                    obj = 0;
                } else {
                    StringBuilder o = a.o("unsupported value '");
                    o.append((Object) typedValue.string);
                    o.append("' for ");
                    o.append(fromArgType.getName());
                    o.append(". Must be a reference to a resource.");
                    throw new XmlPullParserException(o.toString());
                }
            } else {
                int i4 = typedValue.resourceId;
                if (i4 != 0) {
                    if (fromArgType == null) {
                        fromArgType = navType;
                        obj = Integer.valueOf(i4);
                    } else {
                        StringBuilder o2 = a.o("unsupported value '");
                        o2.append((Object) typedValue.string);
                        o2.append("' for ");
                        o2.append(fromArgType.getName());
                        o2.append(". You must use a \"");
                        o2.append(NavType.ReferenceType.getName());
                        o2.append("\" type to reference other resources.");
                        throw new XmlPullParserException(o2.toString());
                    }
                } else if (fromArgType == NavType.StringType) {
                    obj = typedArray.getString(R.styleable.NavArgument_android_defaultValue);
                } else {
                    int i5 = typedValue.type;
                    if (i5 == 3) {
                        String charSequence = typedValue.string.toString();
                        if (fromArgType == null) {
                            fromArgType = NavType.inferFromValue(charSequence);
                        }
                        obj = fromArgType.parseValue(charSequence);
                    } else if (i5 == 4) {
                        fromArgType = checkNavType(typedValue, fromArgType, NavType.FloatType, string, "float");
                        obj = Float.valueOf(typedValue.getFloat());
                    } else if (i5 == 5) {
                        fromArgType = checkNavType(typedValue, fromArgType, NavType.IntType, string, "dimension");
                        obj = Integer.valueOf((int) typedValue.getDimension(resources.getDisplayMetrics()));
                    } else if (i5 == 18) {
                        fromArgType = checkNavType(typedValue, fromArgType, NavType.BoolType, string, "boolean");
                        obj = Boolean.valueOf(typedValue.data != 0);
                    } else if (i5 >= 16 && i5 <= 31) {
                        fromArgType = checkNavType(typedValue, fromArgType, NavType.IntType, string, "integer");
                        obj = Integer.valueOf(typedValue.data);
                    } else {
                        StringBuilder o3 = a.o("unsupported argument type ");
                        o3.append(typedValue.type);
                        throw new XmlPullParserException(o3.toString());
                    }
                }
            }
        }
        if (obj != null) {
            builder.setDefaultValue(obj);
        }
        if (fromArgType != null) {
            builder.setType(fromArgType);
        }
        return builder.build();
    }

    private void inflateArgumentForBundle(@NonNull Resources resources, @NonNull Bundle bundle, @NonNull AttributeSet attributeSet, int i2) throws XmlPullParserException {
        TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.NavArgument);
        String string = obtainAttributes.getString(R.styleable.NavArgument_android_name);
        if (string != null) {
            NavArgument inflateArgument = inflateArgument(obtainAttributes, resources, i2);
            if (inflateArgument.isDefaultValuePresent()) {
                inflateArgument.putDefaultValue(string, bundle);
            }
            obtainAttributes.recycle();
            return;
        }
        throw new XmlPullParserException("Arguments must have a name");
    }

    private void inflateArgumentForDestination(@NonNull Resources resources, @NonNull NavDestination navDestination, @NonNull AttributeSet attributeSet, int i2) throws XmlPullParserException {
        TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.NavArgument);
        String string = obtainAttributes.getString(R.styleable.NavArgument_android_name);
        if (string != null) {
            navDestination.addArgument(string, inflateArgument(obtainAttributes, resources, i2));
            obtainAttributes.recycle();
            return;
        }
        throw new XmlPullParserException("Arguments must have a name");
    }

    private void inflateDeepLink(@NonNull Resources resources, @NonNull NavDestination navDestination, @NonNull AttributeSet attributeSet) {
        TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.NavDeepLink);
        String string = obtainAttributes.getString(R.styleable.NavDeepLink_uri);
        if (!TextUtils.isEmpty(string)) {
            navDestination.addDeepLink(string.replace(APPLICATION_ID_PLACEHOLDER, this.mContext.getPackageName()));
            obtainAttributes.recycle();
            return;
        }
        throw new IllegalArgumentException("Every <deepLink> must include an app:uri");
    }

    @NonNull
    @SuppressLint({"ResourceType"})
    public NavGraph inflate(@NavigationRes int i2) {
        int next;
        Resources resources = this.mContext.getResources();
        XmlResourceParser xml = resources.getXml(i2);
        AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
        while (true) {
            try {
                try {
                    next = xml.next();
                    if (next == 2 || next == 1) {
                        break;
                    }
                } catch (Exception e2) {
                    throw new RuntimeException("Exception inflating " + resources.getResourceName(i2) + " line " + xml.getLineNumber(), e2);
                }
            } finally {
                xml.close();
            }
        }
        if (next == 2) {
            String name = xml.getName();
            NavDestination inflate = inflate(resources, xml, asAttributeSet, i2);
            if (inflate instanceof NavGraph) {
                return (NavGraph) inflate;
            }
            throw new IllegalArgumentException("Root element <" + name + "> did not inflate into a NavGraph");
        }
        throw new XmlPullParserException("No start tag found");
    }

    @NonNull
    private NavDestination inflate(@NonNull Resources resources, @NonNull XmlResourceParser xmlResourceParser, @NonNull AttributeSet attributeSet, int i2) throws XmlPullParserException, IOException {
        int depth;
        NavDestination createDestination = this.mNavigatorProvider.getNavigator(xmlResourceParser.getName()).createDestination();
        createDestination.onInflate(this.mContext, attributeSet);
        int depth2 = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || ((depth = xmlResourceParser.getDepth()) < depth2 && next == 3)) {
                break;
            } else if (next == 2 && depth <= depth2) {
                String name = xmlResourceParser.getName();
                if (TAG_ARGUMENT.equals(name)) {
                    inflateArgumentForDestination(resources, createDestination, attributeSet, i2);
                } else if (TAG_DEEP_LINK.equals(name)) {
                    inflateDeepLink(resources, createDestination, attributeSet);
                } else if (TAG_ACTION.equals(name)) {
                    inflateAction(resources, createDestination, attributeSet, xmlResourceParser, i2);
                } else if (TAG_INCLUDE.equals(name) && (createDestination instanceof NavGraph)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.NavInclude);
                    ((NavGraph) createDestination).addDestination(inflate(obtainAttributes.getResourceId(R.styleable.NavInclude_graph, 0)));
                    obtainAttributes.recycle();
                } else if (createDestination instanceof NavGraph) {
                    ((NavGraph) createDestination).addDestination(inflate(resources, xmlResourceParser, attributeSet, i2));
                }
            }
        }
        return createDestination;
    }
}
