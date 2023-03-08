.class public final enum Lf/d/a/o/c;
.super Ljava/lang/Enum;
.source "EncodeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/d/a/o/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lf/d/a/o/c;

.field public static final enum b:Lf/d/a/o/c;

.field public static final enum c:Lf/d/a/o/c;

.field public static final synthetic d:[Lf/d/a/o/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lf/d/a/o/c;

    const-string v1, "SOURCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf/d/a/o/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/o/c;->a:Lf/d/a/o/c;

    .line 2
    new-instance v0, Lf/d/a/o/c;

    const-string v1, "TRANSFORMED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lf/d/a/o/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/o/c;->b:Lf/d/a/o/c;

    .line 3
    new-instance v0, Lf/d/a/o/c;

    const-string v1, "NONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lf/d/a/o/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/o/c;->c:Lf/d/a/o/c;

    const/4 v1, 0x3

    new-array v1, v1, [Lf/d/a/o/c;

    .line 4
    sget-object v5, Lf/d/a/o/c;->a:Lf/d/a/o/c;

    aput-object v5, v1, v2

    sget-object v2, Lf/d/a/o/c;->b:Lf/d/a/o/c;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lf/d/a/o/c;->d:[Lf/d/a/o/c;

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

.method public static valueOf(Ljava/lang/String;)Lf/d/a/o/c;
    .locals 1

    .line 1
    const-class v0, Lf/d/a/o/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/d/a/o/c;

    return-object p0
.end method

.method public static values()[Lf/d/a/o/c;
    .locals 1

    .line 1
    sget-object v0, Lf/d/a/o/c;->d:[Lf/d/a/o/c;

    invoke-virtual {v0}, [Lf/d/a/o/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/d/a/o/c;

    return-object v0
.end method
