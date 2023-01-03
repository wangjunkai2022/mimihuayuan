.class public final enum Lf/d/a/o/i;
.super Ljava/lang/Enum;
.source "PreferredColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/d/a/o/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lf/d/a/o/i;

.field public static final enum b:Lf/d/a/o/i;

.field public static final synthetic c:[Lf/d/a/o/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lf/d/a/o/i;

    const-string v1, "SRGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf/d/a/o/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/o/i;->a:Lf/d/a/o/i;

    .line 2
    new-instance v0, Lf/d/a/o/i;

    const-string v1, "DISPLAY_P3"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lf/d/a/o/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/o/i;->b:Lf/d/a/o/i;

    const/4 v1, 0x2

    new-array v1, v1, [Lf/d/a/o/i;

    .line 3
    sget-object v4, Lf/d/a/o/i;->a:Lf/d/a/o/i;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lf/d/a/o/i;->c:[Lf/d/a/o/i;

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

.method public static valueOf(Ljava/lang/String;)Lf/d/a/o/i;
    .locals 1

    .line 1
    const-class v0, Lf/d/a/o/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/d/a/o/i;

    return-object p0
.end method

.method public static values()[Lf/d/a/o/i;
    .locals 1

    .line 1
    sget-object v0, Lf/d/a/o/i;->c:[Lf/d/a/o/i;

    invoke-virtual {v0}, [Lf/d/a/o/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/d/a/o/i;

    return-object v0
.end method
