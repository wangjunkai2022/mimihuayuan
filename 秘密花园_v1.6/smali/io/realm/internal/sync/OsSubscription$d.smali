.class public final enum Lio/realm/internal/sync/OsSubscription$d;
.super Ljava/lang/Enum;
.source "OsSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/sync/OsSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/sync/OsSubscription$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lio/realm/internal/sync/OsSubscription$d;

.field public static final enum c:Lio/realm/internal/sync/OsSubscription$d;

.field public static final enum d:Lio/realm/internal/sync/OsSubscription$d;

.field public static final enum e:Lio/realm/internal/sync/OsSubscription$d;

.field public static final enum f:Lio/realm/internal/sync/OsSubscription$d;

.field public static final synthetic g:[Lio/realm/internal/sync/OsSubscription$d;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lio/realm/internal/sync/OsSubscription$d;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/sync/OsSubscription$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/sync/OsSubscription$d;->b:Lio/realm/internal/sync/OsSubscription$d;

    .line 2
    new-instance v0, Lio/realm/internal/sync/OsSubscription$d;

    const-string v1, "CREATING"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lio/realm/internal/sync/OsSubscription$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/sync/OsSubscription$d;->c:Lio/realm/internal/sync/OsSubscription$d;

    .line 3
    new-instance v0, Lio/realm/internal/sync/OsSubscription$d;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v4, v2}, Lio/realm/internal/sync/OsSubscription$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/sync/OsSubscription$d;->d:Lio/realm/internal/sync/OsSubscription$d;

    .line 4
    new-instance v0, Lio/realm/internal/sync/OsSubscription$d;

    const-string v1, "COMPLETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lio/realm/internal/sync/OsSubscription$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/sync/OsSubscription$d;->e:Lio/realm/internal/sync/OsSubscription$d;

    .line 5
    new-instance v0, Lio/realm/internal/sync/OsSubscription$d;

    const-string v1, "INVALIDATED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lio/realm/internal/sync/OsSubscription$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/sync/OsSubscription$d;->f:Lio/realm/internal/sync/OsSubscription$d;

    const/4 v1, 0x5

    new-array v1, v1, [Lio/realm/internal/sync/OsSubscription$d;

    .line 6
    sget-object v7, Lio/realm/internal/sync/OsSubscription$d;->b:Lio/realm/internal/sync/OsSubscription$d;

    aput-object v7, v1, v2

    sget-object v2, Lio/realm/internal/sync/OsSubscription$d;->c:Lio/realm/internal/sync/OsSubscription$d;

    aput-object v2, v1, v3

    sget-object v2, Lio/realm/internal/sync/OsSubscription$d;->d:Lio/realm/internal/sync/OsSubscription$d;

    aput-object v2, v1, v4

    sget-object v2, Lio/realm/internal/sync/OsSubscription$d;->e:Lio/realm/internal/sync/OsSubscription$d;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lio/realm/internal/sync/OsSubscription$d;->g:[Lio/realm/internal/sync/OsSubscription$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/realm/internal/sync/OsSubscription$d;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/sync/OsSubscription$d;
    .locals 1

    .line 1
    const-class v0, Lio/realm/internal/sync/OsSubscription$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/internal/sync/OsSubscription$d;

    return-object p0
.end method

.method public static values()[Lio/realm/internal/sync/OsSubscription$d;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/sync/OsSubscription$d;->g:[Lio/realm/internal/sync/OsSubscription$d;

    invoke-virtual {v0}, [Lio/realm/internal/sync/OsSubscription$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/sync/OsSubscription$d;

    return-object v0
.end method
