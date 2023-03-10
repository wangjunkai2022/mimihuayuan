.class public final enum Lf/d/a/o/n/i$f;
.super Ljava/lang/Enum;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/n/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/d/a/o/n/i$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lf/d/a/o/n/i$f;

.field public static final enum b:Lf/d/a/o/n/i$f;

.field public static final enum c:Lf/d/a/o/n/i$f;

.field public static final synthetic d:[Lf/d/a/o/n/i$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lf/d/a/o/n/i$f;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf/d/a/o/n/i$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/o/n/i$f;->a:Lf/d/a/o/n/i$f;

    .line 2
    new-instance v0, Lf/d/a/o/n/i$f;

    const-string v1, "SWITCH_TO_SOURCE_SERVICE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lf/d/a/o/n/i$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/o/n/i$f;->b:Lf/d/a/o/n/i$f;

    .line 3
    new-instance v0, Lf/d/a/o/n/i$f;

    const-string v1, "DECODE_DATA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lf/d/a/o/n/i$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/o/n/i$f;->c:Lf/d/a/o/n/i$f;

    const/4 v1, 0x3

    new-array v1, v1, [Lf/d/a/o/n/i$f;

    .line 4
    sget-object v5, Lf/d/a/o/n/i$f;->a:Lf/d/a/o/n/i$f;

    aput-object v5, v1, v2

    sget-object v2, Lf/d/a/o/n/i$f;->b:Lf/d/a/o/n/i$f;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lf/d/a/o/n/i$f;->d:[Lf/d/a/o/n/i$f;

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

.method public static valueOf(Ljava/lang/String;)Lf/d/a/o/n/i$f;
    .locals 1

    .line 1
    const-class v0, Lf/d/a/o/n/i$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/d/a/o/n/i$f;

    return-object p0
.end method

.method public static values()[Lf/d/a/o/n/i$f;
    .locals 1

    .line 1
    sget-object v0, Lf/d/a/o/n/i$f;->d:[Lf/d/a/o/n/i$f;

    invoke-virtual {v0}, [Lf/d/a/o/n/i$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/d/a/o/n/i$f;

    return-object v0
.end method
