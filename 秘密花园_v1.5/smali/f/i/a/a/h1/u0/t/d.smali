.class public final Lf/i/a/a/h1/u0/t/d;
.super Ljava/lang/Object;
.source "FilteringHlsPlaylistParserFactory.java"

# interfaces
.implements Lf/i/a/a/h1/u0/t/i;


# instance fields
.field public final a:Lf/i/a/a/h1/u0/t/i;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/e1/c0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/u0/t/i;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/h1/u0/t/i;",
            "Ljava/util/List<",
            "Lf/i/a/a/e1/c0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/u0/t/d;->a:Lf/i/a/a/h1/u0/t/i;

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/u0/t/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/h1/u0/t/e;)Lf/i/a/a/l1/e0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/h1/u0/t/e;",
            ")",
            "Lf/i/a/a/l1/e0$a<",
            "Lf/i/a/a/h1/u0/t/g;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/i/a/a/e1/z;

    iget-object v1, p0, Lf/i/a/a/h1/u0/t/d;->a:Lf/i/a/a/h1/u0/t/i;

    .line 2
    invoke-interface {v1, p1}, Lf/i/a/a/h1/u0/t/i;->a(Lf/i/a/a/h1/u0/t/e;)Lf/i/a/a/l1/e0$a;

    move-result-object p1

    iget-object v1, p0, Lf/i/a/a/h1/u0/t/d;->b:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lf/i/a/a/e1/z;-><init>(Lf/i/a/a/l1/e0$a;Ljava/util/List;)V

    return-object v0
.end method

.method public b()Lf/i/a/a/l1/e0$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/i/a/a/l1/e0$a<",
            "Lf/i/a/a/h1/u0/t/g;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/i/a/a/e1/z;

    iget-object v1, p0, Lf/i/a/a/h1/u0/t/d;->a:Lf/i/a/a/h1/u0/t/i;

    .line 2
    invoke-interface {v1}, Lf/i/a/a/h1/u0/t/i;->b()Lf/i/a/a/l1/e0$a;

    move-result-object v1

    iget-object v2, p0, Lf/i/a/a/h1/u0/t/d;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lf/i/a/a/e1/z;-><init>(Lf/i/a/a/l1/e0$a;Ljava/util/List;)V

    return-object v0
.end method
