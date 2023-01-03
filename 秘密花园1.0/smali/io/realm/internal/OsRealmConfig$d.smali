.class public final enum Lio/realm/internal/OsRealmConfig$d;
.super Ljava/lang/Enum;
.source "OsRealmConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsRealmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/OsRealmConfig$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lio/realm/internal/OsRealmConfig$d;

.field public static final enum c:Lio/realm/internal/OsRealmConfig$d;

.field public static final enum d:Lio/realm/internal/OsRealmConfig$d;

.field public static final enum e:Lio/realm/internal/OsRealmConfig$d;

.field public static final enum f:Lio/realm/internal/OsRealmConfig$d;

.field public static final enum g:Lio/realm/internal/OsRealmConfig$d;

.field public static final synthetic h:[Lio/realm/internal/OsRealmConfig$d;


# instance fields
.field public final a:B


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lio/realm/internal/OsRealmConfig$d;

    const-string v1, "SCHEMA_MODE_AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/realm/internal/OsRealmConfig$d;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$d;->b:Lio/realm/internal/OsRealmConfig$d;

    .line 2
    new-instance v0, Lio/realm/internal/OsRealmConfig$d;

    const-string v1, "SCHEMA_MODE_IMMUTABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lio/realm/internal/OsRealmConfig$d;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$d;->c:Lio/realm/internal/OsRealmConfig$d;

    .line 3
    new-instance v0, Lio/realm/internal/OsRealmConfig$d;

    const-string v1, "SCHEMA_MODE_READONLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lio/realm/internal/OsRealmConfig$d;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$d;->d:Lio/realm/internal/OsRealmConfig$d;

    .line 4
    new-instance v0, Lio/realm/internal/OsRealmConfig$d;

    const-string v1, "SCHEMA_MODE_RESET_FILE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lio/realm/internal/OsRealmConfig$d;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$d;->e:Lio/realm/internal/OsRealmConfig$d;

    .line 5
    new-instance v0, Lio/realm/internal/OsRealmConfig$d;

    const-string v1, "SCHEMA_MODE_ADDITIVE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lio/realm/internal/OsRealmConfig$d;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$d;->f:Lio/realm/internal/OsRealmConfig$d;

    .line 6
    new-instance v0, Lio/realm/internal/OsRealmConfig$d;

    const-string v1, "SCHEMA_MODE_MANUAL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lio/realm/internal/OsRealmConfig$d;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$d;->g:Lio/realm/internal/OsRealmConfig$d;

    const/4 v1, 0x6

    new-array v1, v1, [Lio/realm/internal/OsRealmConfig$d;

    .line 7
    sget-object v8, Lio/realm/internal/OsRealmConfig$d;->b:Lio/realm/internal/OsRealmConfig$d;

    aput-object v8, v1, v2

    sget-object v2, Lio/realm/internal/OsRealmConfig$d;->c:Lio/realm/internal/OsRealmConfig$d;

    aput-object v2, v1, v3

    sget-object v2, Lio/realm/internal/OsRealmConfig$d;->d:Lio/realm/internal/OsRealmConfig$d;

    aput-object v2, v1, v4

    sget-object v2, Lio/realm/internal/OsRealmConfig$d;->e:Lio/realm/internal/OsRealmConfig$d;

    aput-object v2, v1, v5

    sget-object v2, Lio/realm/internal/OsRealmConfig$d;->f:Lio/realm/internal/OsRealmConfig$d;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lio/realm/internal/OsRealmConfig$d;->h:[Lio/realm/internal/OsRealmConfig$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-byte p3, p0, Lio/realm/internal/OsRealmConfig$d;->a:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/OsRealmConfig$d;
    .locals 1

    .line 1
    const-class v0, Lio/realm/internal/OsRealmConfig$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/internal/OsRealmConfig$d;

    return-object p0
.end method

.method public static values()[Lio/realm/internal/OsRealmConfig$d;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/OsRealmConfig$d;->h:[Lio/realm/internal/OsRealmConfig$d;

    invoke-virtual {v0}, [Lio/realm/internal/OsRealmConfig$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/OsRealmConfig$d;

    return-object v0
.end method
