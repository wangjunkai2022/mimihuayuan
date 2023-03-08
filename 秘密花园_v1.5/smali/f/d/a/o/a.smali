.class public final enum Lf/d/a/o/a;
.super Ljava/lang/Enum;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/d/a/o/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lf/d/a/o/a;

.field public static final enum b:Lf/d/a/o/a;

.field public static final enum c:Lf/d/a/o/a;

.field public static final enum d:Lf/d/a/o/a;

.field public static final enum e:Lf/d/a/o/a;

.field public static final synthetic f:[Lf/d/a/o/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lf/d/a/o/a;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf/d/a/o/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/o/a;->a:Lf/d/a/o/a;

    .line 2
    new-instance v0, Lf/d/a/o/a;

    const-string v1, "REMOTE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lf/d/a/o/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/o/a;->b:Lf/d/a/o/a;

    .line 3
    new-instance v0, Lf/d/a/o/a;

    const-string v1, "DATA_DISK_CACHE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lf/d/a/o/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/o/a;->c:Lf/d/a/o/a;

    .line 4
    new-instance v0, Lf/d/a/o/a;

    const-string v1, "RESOURCE_DISK_CACHE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lf/d/a/o/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/o/a;->d:Lf/d/a/o/a;

    .line 5
    new-instance v0, Lf/d/a/o/a;

    const-string v1, "MEMORY_CACHE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lf/d/a/o/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/d/a/o/a;->e:Lf/d/a/o/a;

    const/4 v1, 0x5

    new-array v1, v1, [Lf/d/a/o/a;

    .line 6
    sget-object v7, Lf/d/a/o/a;->a:Lf/d/a/o/a;

    aput-object v7, v1, v2

    sget-object v2, Lf/d/a/o/a;->b:Lf/d/a/o/a;

    aput-object v2, v1, v3

    sget-object v2, Lf/d/a/o/a;->c:Lf/d/a/o/a;

    aput-object v2, v1, v4

    sget-object v2, Lf/d/a/o/a;->d:Lf/d/a/o/a;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lf/d/a/o/a;->f:[Lf/d/a/o/a;

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

.method public static valueOf(Ljava/lang/String;)Lf/d/a/o/a;
    .locals 1

    .line 1
    const-class v0, Lf/d/a/o/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/d/a/o/a;

    return-object p0
.end method

.method public static values()[Lf/d/a/o/a;
    .locals 1

    .line 1
    sget-object v0, Lf/d/a/o/a;->f:[Lf/d/a/o/a;

    invoke-virtual {v0}, [Lf/d/a/o/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/d/a/o/a;

    return-object v0
.end method
