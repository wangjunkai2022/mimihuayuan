.class public final Li/m0/c/e$e;
.super Lh/o/c/h;
.source "DiskLruCache.kt"

# interfaces
.implements Lh/o/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/m0/c/e;->H()Lj/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/o/c/h;",
        "Lh/o/b/b<",
        "Ljava/io/IOException;",
        "Lh/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li/m0/c/e;


# direct methods
.method public constructor <init>(Li/m0/c/e;)V
    .locals 0

    iput-object p1, p0, Li/m0/c/e$e;->a:Li/m0/c/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lh/o/c/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/io/IOException;

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Li/m0/c/e$e;->a:Li/m0/c/e;

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p1

    sget-boolean v0, Lh/j;->a:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Assertion failed"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Li/m0/c/e$e;->a:Li/m0/c/e;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Li/m0/c/e;->i:Z

    .line 5
    sget-object p1, Lh/i;->a:Lh/i;

    return-object p1

    :cond_2
    const-string p1, "it"

    .line 6
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
