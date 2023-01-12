.class public Lf/i/b/c0/o$a;
.super Lf/i/b/z;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/i/b/c0/o;->a(Lf/i/b/j;Lf/i/b/d0/a;)Lf/i/b/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i/b/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lf/i/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/z<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lf/i/b/j;

.field public final synthetic e:Lf/i/b/d0/a;

.field public final synthetic f:Lf/i/b/c0/o;


# direct methods
.method public constructor <init>(Lf/i/b/c0/o;ZZLf/i/b/j;Lf/i/b/d0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/b/c0/o$a;->f:Lf/i/b/c0/o;

    iput-boolean p2, p0, Lf/i/b/c0/o$a;->b:Z

    iput-boolean p3, p0, Lf/i/b/c0/o$a;->c:Z

    iput-object p4, p0, Lf/i/b/c0/o$a;->d:Lf/i/b/j;

    iput-object p5, p0, Lf/i/b/c0/o$a;->e:Lf/i/b/d0/a;

    invoke-direct {p0}, Lf/i/b/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/i/b/e0/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/e0/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/i/b/c0/o$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lf/i/b/e0/a;->a0()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/b/c0/o$a;->a:Lf/i/b/z;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lf/i/b/c0/o$a;->d:Lf/i/b/j;

    iget-object v1, p0, Lf/i/b/c0/o$a;->f:Lf/i/b/c0/o;

    iget-object v2, p0, Lf/i/b/c0/o$a;->e:Lf/i/b/d0/a;

    .line 5
    invoke-virtual {v0, v1, v2}, Lf/i/b/j;->g(Lf/i/b/a0;Lf/i/b/d0/a;)Lf/i/b/z;

    move-result-object v0

    iput-object v0, p0, Lf/i/b/c0/o$a;->a:Lf/i/b/z;

    .line 6
    :goto_0
    invoke-virtual {v0, p1}, Lf/i/b/z;->a(Lf/i/b/e0/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lf/i/b/e0/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/e0/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf/i/b/c0/o$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lf/i/b/e0/c;->I()Lf/i/b/e0/c;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/b/c0/o$a;->a:Lf/i/b/z;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lf/i/b/c0/o$a;->d:Lf/i/b/j;

    iget-object v1, p0, Lf/i/b/c0/o$a;->f:Lf/i/b/c0/o;

    iget-object v2, p0, Lf/i/b/c0/o$a;->e:Lf/i/b/d0/a;

    .line 5
    invoke-virtual {v0, v1, v2}, Lf/i/b/j;->g(Lf/i/b/a0;Lf/i/b/d0/a;)Lf/i/b/z;

    move-result-object v0

    iput-object v0, p0, Lf/i/b/c0/o$a;->a:Lf/i/b/z;

    .line 6
    :goto_0
    invoke-virtual {v0, p1, p2}, Lf/i/b/z;->b(Lf/i/b/e0/c;Ljava/lang/Object;)V

    return-void
.end method
