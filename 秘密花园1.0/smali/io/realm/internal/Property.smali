.class public Lio/realm/internal/Property;
.super Ljava/lang/Object;
.source "Property.java"

# interfaces
.implements Lg/a/f1/i;


# static fields
.field public static final b:J


# instance fields
.field public a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/Property;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/Property;->b:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/realm/internal/Property;->a:J

    .line 3
    sget-object p1, Lg/a/f1/h;->c:Lg/a/f1/h;

    invoke-virtual {p1, p0}, Lg/a/f1/h;->a(Lg/a/f1/i;)V

    return-void
.end method

.method public static a(Lio/realm/RealmFieldType;Z)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Unsupported filed type: \'%s\'."

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 v1, 0x86

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x85

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x84

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x83

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x82

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x81

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x80

    goto :goto_0

    :pswitch_7
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_8
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_9
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_a
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_b
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_c
    const/4 v1, 0x0

    :goto_0
    :pswitch_d
    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x40

    :goto_1
    or-int p0, v1, v2

    return p0

    :pswitch_e
    const/16 p0, 0x88

    return p0

    :pswitch_f
    const/16 p0, 0x87

    return p0

    :pswitch_10
    const/16 p0, 0x47

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static native nativeCreatePersistedProperty(Ljava/lang/String;IZZ)J
.end method

.method public static native nativeGetColumnIndex(J)J
.end method

.method public static native nativeGetFinalizerPtr()J
.end method

.method public static native nativeGetLinkedObjectName(J)Ljava/lang/String;
.end method

.method public static native nativeGetType(J)I
.end method


# virtual methods
.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/Property;->b:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/Property;->a:J

    return-wide v0
.end method
