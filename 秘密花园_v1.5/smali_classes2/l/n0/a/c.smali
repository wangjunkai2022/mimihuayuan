.class public final Ll/n0/a/c;
.super Ljava/lang/Object;
.source "GsonResponseBodyConverter.java"

# interfaces
.implements Ll/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll/l<",
        "Li/i0;",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lf/i/b/j;

.field public final b:Lf/i/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/z<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/b/j;Lf/i/b/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/j;",
            "Lf/i/b/z<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/n0/a/c;->a:Lf/i/b/j;

    .line 3
    iput-object p2, p0, Ll/n0/a/c;->b:Lf/i/b/z;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Li/i0;

    .line 2
    iget-object v0, p0, Ll/n0/a/c;->a:Lf/i/b/j;

    .line 3
    iget-object v1, p1, Li/i0;->a:Ljava/io/Reader;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Li/i0$a;

    invoke-virtual {p1}, Li/i0;->G()Lj/j;

    move-result-object v2

    invoke-virtual {p1}, Li/i0;->f()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Li/i0$a;-><init>(Lj/j;Ljava/nio/charset/Charset;)V

    .line 4
    iput-object v1, p1, Li/i0;->a:Ljava/io/Reader;

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Lf/i/b/j;->h(Ljava/io/Reader;)Lf/i/b/e0/a;

    move-result-object v0

    .line 6
    :try_start_0
    iget-object v1, p0, Ll/n0/a/c;->b:Lf/i/b/z;

    invoke-virtual {v1, v0}, Lf/i/b/z;->a(Lf/i/b/e0/a;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lf/i/b/e0/a;->V()Lf/i/b/e0/b;

    move-result-object v0

    sget-object v2, Lf/i/b/e0/b;->j:Lf/i/b/e0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_1

    .line 8
    invoke-virtual {p1}, Li/i0;->close()V

    return-object v1

    .line 9
    :cond_1
    :try_start_1
    new-instance v0, Lf/i/b/p;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lf/i/b/p;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {p1}, Li/i0;->close()V

    throw v0
.end method
