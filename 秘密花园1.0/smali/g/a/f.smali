.class public final enum Lg/a/f;
.super Ljava/lang/Enum;
.source "Case.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lg/a/f;

.field public static final enum c:Lg/a/f;

.field public static final synthetic d:[Lg/a/f;


# instance fields
.field public final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lg/a/f;

    const-string v1, "SENSITIVE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lg/a/f;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lg/a/f;->b:Lg/a/f;

    .line 2
    new-instance v0, Lg/a/f;

    const-string v1, "INSENSITIVE"

    invoke-direct {v0, v1, v3, v2}, Lg/a/f;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lg/a/f;->c:Lg/a/f;

    const/4 v1, 0x2

    new-array v1, v1, [Lg/a/f;

    .line 3
    sget-object v4, Lg/a/f;->b:Lg/a/f;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lg/a/f;->d:[Lg/a/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lg/a/f;->a:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/a/f;
    .locals 1

    .line 1
    const-class v0, Lg/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/a/f;

    return-object p0
.end method

.method public static values()[Lg/a/f;
    .locals 1

    .line 1
    sget-object v0, Lg/a/f;->d:[Lg/a/f;

    invoke-virtual {v0}, [Lg/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/a/f;

    return-object v0
.end method
