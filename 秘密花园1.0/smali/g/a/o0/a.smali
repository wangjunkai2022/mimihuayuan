.class public final enum Lg/a/o0/a;
.super Ljava/lang/Enum;
.source "RealmNamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/a/o0/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lg/a/o0/a;

.field public static final enum b:Lg/a/o0/a;

.field public static final enum c:Lg/a/o0/a;

.field public static final enum d:Lg/a/o0/a;

.field public static final enum e:Lg/a/o0/a;

.field public static final synthetic f:[Lg/a/o0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lg/a/o0/a;

    const-string v1, "NO_POLICY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/a/o0/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/o0/a;->a:Lg/a/o0/a;

    .line 2
    new-instance v0, Lg/a/o0/a;

    const-string v1, "IDENTITY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lg/a/o0/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/o0/a;->b:Lg/a/o0/a;

    .line 3
    new-instance v0, Lg/a/o0/a;

    const-string v1, "CAMEL_CASE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lg/a/o0/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/o0/a;->c:Lg/a/o0/a;

    .line 4
    new-instance v0, Lg/a/o0/a;

    const-string v1, "PASCAL_CASE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lg/a/o0/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/o0/a;->d:Lg/a/o0/a;

    .line 5
    new-instance v0, Lg/a/o0/a;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lg/a/o0/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/o0/a;->e:Lg/a/o0/a;

    const/4 v1, 0x5

    new-array v1, v1, [Lg/a/o0/a;

    .line 6
    sget-object v7, Lg/a/o0/a;->a:Lg/a/o0/a;

    aput-object v7, v1, v2

    sget-object v2, Lg/a/o0/a;->b:Lg/a/o0/a;

    aput-object v2, v1, v3

    sget-object v2, Lg/a/o0/a;->c:Lg/a/o0/a;

    aput-object v2, v1, v4

    sget-object v2, Lg/a/o0/a;->d:Lg/a/o0/a;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lg/a/o0/a;->f:[Lg/a/o0/a;

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

.method public static valueOf(Ljava/lang/String;)Lg/a/o0/a;
    .locals 1

    .line 1
    const-class v0, Lg/a/o0/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/a/o0/a;

    return-object p0
.end method

.method public static values()[Lg/a/o0/a;
    .locals 1

    .line 1
    sget-object v0, Lg/a/o0/a;->f:[Lg/a/o0/a;

    invoke-virtual {v0}, [Lg/a/o0/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/a/o0/a;

    return-object v0
.end method
