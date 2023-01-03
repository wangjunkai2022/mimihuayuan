.class public final enum Li/l0;
.super Ljava/lang/Enum;
.source "TlsVersion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/l0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/l0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Li/l0;

.field public static final enum c:Li/l0;

.field public static final enum d:Li/l0;

.field public static final enum e:Li/l0;

.field public static final enum f:Li/l0;

.field public static final synthetic g:[Li/l0;

.field public static final h:Li/l0$a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Li/l0;

    new-instance v1, Li/l0;

    const-string v2, "TLS_1_3"

    const/4 v3, 0x0

    const-string v4, "TLSv1.3"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Li/l0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Li/l0;->b:Li/l0;

    aput-object v1, v0, v3

    new-instance v1, Li/l0;

    const-string v2, "TLS_1_2"

    const/4 v3, 0x1

    const-string v4, "TLSv1.2"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Li/l0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Li/l0;->c:Li/l0;

    aput-object v1, v0, v3

    new-instance v1, Li/l0;

    const-string v2, "TLS_1_1"

    const/4 v3, 0x2

    const-string v4, "TLSv1.1"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Li/l0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Li/l0;->d:Li/l0;

    aput-object v1, v0, v3

    new-instance v1, Li/l0;

    const-string v2, "TLS_1_0"

    const/4 v3, 0x3

    const-string v4, "TLSv1"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Li/l0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Li/l0;->e:Li/l0;

    aput-object v1, v0, v3

    new-instance v1, Li/l0;

    const-string v2, "SSL_3_0"

    const/4 v3, 0x4

    const-string v4, "SSLv3"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Li/l0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Li/l0;->f:Li/l0;

    aput-object v1, v0, v3

    sput-object v0, Li/l0;->g:[Li/l0;

    new-instance v0, Li/l0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/l0$a;-><init>(Lh/o/c/f;)V

    sput-object v0, Li/l0;->h:Li/l0$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Li/l0;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li/l0;
    .locals 1

    const-class v0, Li/l0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/l0;

    return-object p0
.end method

.method public static values()[Li/l0;
    .locals 1

    sget-object v0, Li/l0;->g:[Li/l0;

    invoke-virtual {v0}, [Li/l0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/l0;

    return-object v0
.end method
