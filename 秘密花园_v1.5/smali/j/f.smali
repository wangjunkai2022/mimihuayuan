.class public final Lj/f;
.super Ljava/lang/Object;
.source "Okio.kt"

# interfaces
.implements Lj/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public i()Lj/b0;
    .locals 1

    .line 1
    sget-object v0, Lj/b0;->d:Lj/b0;

    return-object v0
.end method

.method public j(Lj/g;J)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p2, p3}, Lj/g;->skip(J)V

    return-void

    :cond_0
    const-string p1, "source"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
