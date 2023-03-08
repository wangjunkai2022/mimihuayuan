.class public final enum Lg/a/m;
.super Ljava/lang/Enum;
.source "ImportFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/a/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lg/a/m;

.field public static final synthetic b:[Lg/a/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lg/a/m;

    const-string v1, "CHECK_SAME_VALUES_BEFORE_SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/a/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/m;->a:Lg/a/m;

    const/4 v1, 0x1

    new-array v1, v1, [Lg/a/m;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lg/a/m;->b:[Lg/a/m;

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

.method public static valueOf(Ljava/lang/String;)Lg/a/m;
    .locals 1

    .line 1
    const-class v0, Lg/a/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/a/m;

    return-object p0
.end method

.method public static values()[Lg/a/m;
    .locals 1

    .line 1
    sget-object v0, Lg/a/m;->b:[Lg/a/m;

    invoke-virtual {v0}, [Lg/a/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/a/m;

    return-object v0
.end method
