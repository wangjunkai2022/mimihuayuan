.class public final enum Lio/realm/internal/OsResults$c;
.super Ljava/lang/Enum;
.source "OsResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/OsResults$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/realm/internal/OsResults$c;

.field public static final enum b:Lio/realm/internal/OsResults$c;

.field public static final enum c:Lio/realm/internal/OsResults$c;

.field public static final enum d:Lio/realm/internal/OsResults$c;

.field public static final enum e:Lio/realm/internal/OsResults$c;

.field public static final synthetic f:[Lio/realm/internal/OsResults$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lio/realm/internal/OsResults$c;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/internal/OsResults$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/OsResults$c;->a:Lio/realm/internal/OsResults$c;

    .line 2
    new-instance v0, Lio/realm/internal/OsResults$c;

    const-string v1, "TABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/realm/internal/OsResults$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/OsResults$c;->b:Lio/realm/internal/OsResults$c;

    .line 3
    new-instance v0, Lio/realm/internal/OsResults$c;

    const-string v1, "QUERY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/realm/internal/OsResults$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/OsResults$c;->c:Lio/realm/internal/OsResults$c;

    .line 4
    new-instance v0, Lio/realm/internal/OsResults$c;

    const-string v1, "LINKVIEW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lio/realm/internal/OsResults$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/OsResults$c;->d:Lio/realm/internal/OsResults$c;

    .line 5
    new-instance v0, Lio/realm/internal/OsResults$c;

    const-string v1, "TABLEVIEW"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lio/realm/internal/OsResults$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/OsResults$c;->e:Lio/realm/internal/OsResults$c;

    const/4 v1, 0x5

    new-array v1, v1, [Lio/realm/internal/OsResults$c;

    .line 6
    sget-object v7, Lio/realm/internal/OsResults$c;->a:Lio/realm/internal/OsResults$c;

    aput-object v7, v1, v2

    sget-object v2, Lio/realm/internal/OsResults$c;->b:Lio/realm/internal/OsResults$c;

    aput-object v2, v1, v3

    sget-object v2, Lio/realm/internal/OsResults$c;->c:Lio/realm/internal/OsResults$c;

    aput-object v2, v1, v4

    sget-object v2, Lio/realm/internal/OsResults$c;->d:Lio/realm/internal/OsResults$c;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lio/realm/internal/OsResults$c;->f:[Lio/realm/internal/OsResults$c;

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

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/OsResults$c;
    .locals 1

    .line 1
    const-class v0, Lio/realm/internal/OsResults$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/internal/OsResults$c;

    return-object p0
.end method

.method public static values()[Lio/realm/internal/OsResults$c;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/OsResults$c;->f:[Lio/realm/internal/OsResults$c;

    invoke-virtual {v0}, [Lio/realm/internal/OsResults$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/OsResults$c;

    return-object v0
.end method
