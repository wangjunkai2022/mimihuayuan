.class public final enum Lf/d/a/f;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/d/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lf/d/a/f;

.field public static final enum b:Lf/d/a/f;

.field public static final enum c:Lf/d/a/f;

.field public static final enum d:Lf/d/a/f;

.field public static final synthetic e:[Lf/d/a/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lf/d/a/f;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf/d/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/f;->a:Lf/d/a/f;

    .line 2
    new-instance v0, Lf/d/a/f;

    const-string v1, "HIGH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lf/d/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/f;->b:Lf/d/a/f;

    .line 3
    new-instance v0, Lf/d/a/f;

    const-string v1, "NORMAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lf/d/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/f;->c:Lf/d/a/f;

    .line 4
    new-instance v0, Lf/d/a/f;

    const-string v1, "LOW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lf/d/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/f;->d:Lf/d/a/f;

    const/4 v1, 0x4

    new-array v1, v1, [Lf/d/a/f;

    .line 5
    sget-object v6, Lf/d/a/f;->a:Lf/d/a/f;

    aput-object v6, v1, v2

    sget-object v2, Lf/d/a/f;->b:Lf/d/a/f;

    aput-object v2, v1, v3

    sget-object v2, Lf/d/a/f;->c:Lf/d/a/f;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lf/d/a/f;->e:[Lf/d/a/f;

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

.method public static valueOf(Ljava/lang/String;)Lf/d/a/f;
    .locals 1

    .line 1
    const-class v0, Lf/d/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/d/a/f;

    return-object p0
.end method

.method public static values()[Lf/d/a/f;
    .locals 1

    .line 1
    sget-object v0, Lf/d/a/f;->e:[Lf/d/a/f;

    invoke-virtual {v0}, [Lf/d/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/d/a/f;

    return-object v0
.end method
