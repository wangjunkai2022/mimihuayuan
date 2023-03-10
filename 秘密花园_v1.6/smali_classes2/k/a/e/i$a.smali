.class public final enum Lk/a/e/i$a;
.super Ljava/lang/Enum;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/e/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lk/a/e/i$a;

.field public static final enum b:Lk/a/e/i$a;

.field public static final enum c:Lk/a/e/i$a;

.field public static final synthetic d:[Lk/a/e/i$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lk/a/e/i$a;

    const-string v1, "ascii"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk/a/e/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/e/i$a;->a:Lk/a/e/i$a;

    new-instance v0, Lk/a/e/i$a;

    const-string v1, "utf"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lk/a/e/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/e/i$a;->b:Lk/a/e/i$a;

    new-instance v0, Lk/a/e/i$a;

    const-string v1, "fallback"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lk/a/e/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/e/i$a;->c:Lk/a/e/i$a;

    const/4 v1, 0x3

    new-array v1, v1, [Lk/a/e/i$a;

    .line 2
    sget-object v5, Lk/a/e/i$a;->a:Lk/a/e/i$a;

    aput-object v5, v1, v2

    sget-object v2, Lk/a/e/i$a;->b:Lk/a/e/i$a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lk/a/e/i$a;->d:[Lk/a/e/i$a;

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

.method public static valueOf(Ljava/lang/String;)Lk/a/e/i$a;
    .locals 1

    .line 1
    const-class v0, Lk/a/e/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/e/i$a;

    return-object p0
.end method

.method public static values()[Lk/a/e/i$a;
    .locals 1

    .line 1
    sget-object v0, Lk/a/e/i$a;->d:[Lk/a/e/i$a;

    invoke-virtual {v0}, [Lk/a/e/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/e/i$a;

    return-object v0
.end method
