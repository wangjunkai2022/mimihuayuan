.class public final enum Lg/a/z$a;
.super Ljava/lang/Enum;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/a/z$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lg/a/z$a;

.field public static final enum b:Lg/a/z$a;

.field public static final synthetic c:[Lg/a/z$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lg/a/z$a;

    const-string v1, "TYPED_REALM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/a/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/z$a;->a:Lg/a/z$a;

    .line 2
    new-instance v0, Lg/a/z$a;

    const-string v1, "DYNAMIC_REALM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lg/a/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/z$a;->b:Lg/a/z$a;

    const/4 v1, 0x2

    new-array v1, v1, [Lg/a/z$a;

    .line 3
    sget-object v4, Lg/a/z$a;->a:Lg/a/z$a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lg/a/z$a;->c:[Lg/a/z$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lg/a/z$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lg/a/a;",
            ">;)",
            "Lg/a/z$a;"
        }
    .end annotation

    .line 1
    const-class v0, Lg/a/x;

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lg/a/z$a;->a:Lg/a/z$a;

    return-object p0

    .line 3
    :cond_0
    const-class v0, Lg/a/i;

    if-ne p0, v0, :cond_1

    .line 4
    sget-object p0, Lg/a/z$a;->b:Lg/a/z$a;

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The type of Realm class must be Realm or DynamicRealm."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/a/z$a;
    .locals 1

    .line 1
    const-class v0, Lg/a/z$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/a/z$a;

    return-object p0
.end method

.method public static values()[Lg/a/z$a;
    .locals 1

    .line 1
    sget-object v0, Lg/a/z$a;->c:[Lg/a/z$a;

    invoke-virtual {v0}, [Lg/a/z$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/a/z$a;

    return-object v0
.end method
