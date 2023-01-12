.class public abstract enum Lf/i/b/x;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/i/b/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lf/i/b/x;

.field public static final enum b:Lf/i/b/x;

.field public static final synthetic c:[Lf/i/b/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lf/i/b/x$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf/i/b/x$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/i/b/x;->a:Lf/i/b/x;

    .line 2
    new-instance v0, Lf/i/b/x$b;

    const-string v1, "STRING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lf/i/b/x$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/i/b/x;->b:Lf/i/b/x;

    const/4 v1, 0x2

    new-array v1, v1, [Lf/i/b/x;

    .line 3
    sget-object v4, Lf/i/b/x;->a:Lf/i/b/x;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lf/i/b/x;->c:[Lf/i/b/x;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILf/i/b/x$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf/i/b/x;
    .locals 1

    .line 1
    const-class v0, Lf/i/b/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/i/b/x;

    return-object p0
.end method

.method public static values()[Lf/i/b/x;
    .locals 1

    .line 1
    sget-object v0, Lf/i/b/x;->c:[Lf/i/b/x;

    invoke-virtual {v0}, [Lf/i/b/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/i/b/x;

    return-object v0
.end method
