.class public abstract Li/g0;
.super Ljava/lang/Object;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/g0$a;
    }
.end annotation


# static fields
.field public static final a:Li/g0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Li/g0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/g0$a;-><init>(Lh/o/c/f;)V

    sput-object v0, Li/g0;->a:Li/g0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final c(Ljava/lang/String;Li/z;)Li/g0;
    .locals 1

    sget-object v0, Li/g0;->a:Li/g0$a;

    invoke-virtual {v0, p0, p1}, Li/g0$a;->a(Ljava/lang/String;Li/z;)Li/g0;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Li/z;[B)Li/g0;
    .locals 7

    .line 1
    array-length p0, p1

    .line 2
    array-length v0, p1

    int-to-long v1, v0

    const/4 v0, 0x0

    int-to-long v3, v0

    int-to-long v5, p0

    invoke-static/range {v1 .. v6}, Li/m0/b;->e(JJJ)V

    .line 3
    new-instance v1, Li/g0$a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p0, v0}, Li/g0$a$a;-><init>([BLi/z;II)V

    return-object v1
.end method


# virtual methods
.method public a()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract b()Li/z;
.end method

.method public abstract e(Lj/i;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
