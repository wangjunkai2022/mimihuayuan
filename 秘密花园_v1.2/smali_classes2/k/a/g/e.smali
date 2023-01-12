.class public final enum Lk/a/g/e;
.super Ljava/lang/Enum;
.source "NodeFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/g/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lk/a/g/e;

.field public static final enum b:Lk/a/g/e;

.field public static final enum c:Lk/a/g/e;

.field public static final enum d:Lk/a/g/e;

.field public static final enum e:Lk/a/g/e;

.field public static final synthetic f:[Lk/a/g/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lk/a/g/e;

    const-string v1, "CONTINUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk/a/g/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/g/e;->a:Lk/a/g/e;

    .line 2
    new-instance v0, Lk/a/g/e;

    const-string v1, "SKIP_CHILDREN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lk/a/g/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/g/e;->b:Lk/a/g/e;

    .line 3
    new-instance v0, Lk/a/g/e;

    const-string v1, "SKIP_ENTIRELY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lk/a/g/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/g/e;->c:Lk/a/g/e;

    .line 4
    new-instance v0, Lk/a/g/e;

    const-string v1, "REMOVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lk/a/g/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/g/e;->d:Lk/a/g/e;

    .line 5
    new-instance v0, Lk/a/g/e;

    const-string v1, "STOP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lk/a/g/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/g/e;->e:Lk/a/g/e;

    const/4 v1, 0x5

    new-array v1, v1, [Lk/a/g/e;

    .line 6
    sget-object v7, Lk/a/g/e;->a:Lk/a/g/e;

    aput-object v7, v1, v2

    sget-object v2, Lk/a/g/e;->b:Lk/a/g/e;

    aput-object v2, v1, v3

    sget-object v2, Lk/a/g/e;->c:Lk/a/g/e;

    aput-object v2, v1, v4

    sget-object v2, Lk/a/g/e;->d:Lk/a/g/e;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lk/a/g/e;->f:[Lk/a/g/e;

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

.method public static valueOf(Ljava/lang/String;)Lk/a/g/e;
    .locals 1

    .line 1
    const-class v0, Lk/a/g/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/g/e;

    return-object p0
.end method

.method public static values()[Lk/a/g/e;
    .locals 1

    .line 1
    sget-object v0, Lk/a/g/e;->f:[Lk/a/g/e;

    invoke-virtual {v0}, [Lk/a/g/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/g/e;

    return-object v0
.end method
