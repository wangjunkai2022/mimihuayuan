.class public final Lf/i/b/c0/a0/o$r;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lf/i/b/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/b/c0/a0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/i/b/j;Lf/i/b/d0/a;)Lf/i/b/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/i/b/j;",
            "Lf/i/b/d0/a<",
            "TT;>;)",
            "Lf/i/b/z<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p2, p2, Lf/i/b/d0/a;->a:Ljava/lang/Class;

    .line 2
    const-class v0, Ljava/sql/Timestamp;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    const-class p2, Ljava/util/Date;

    if-eqz p1, :cond_1

    .line 4
    new-instance v0, Lf/i/b/d0/a;

    invoke-direct {v0, p2}, Lf/i/b/d0/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 5
    invoke-virtual {p1, v0}, Lf/i/b/j;->f(Lf/i/b/d0/a;)Lf/i/b/z;

    move-result-object p1

    .line 6
    new-instance p2, Lf/i/b/c0/a0/o$r$a;

    invoke-direct {p2, p0, p1}, Lf/i/b/c0/a0/o$r$a;-><init>(Lf/i/b/c0/a0/o$r;Lf/i/b/z;)V

    return-object p2

    .line 7
    :cond_1
    throw v1
.end method
