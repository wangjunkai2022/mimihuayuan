.class public final Lf/i/a/a/e1/z;
.super Ljava/lang/Object;
.source "FilteringManifestParser.java"

# interfaces
.implements Lf/i/a/a/l1/e0$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lf/i/a/a/e1/y<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lf/i/a/a/l1/e0$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/e0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/l1/e0$a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/e1/c0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/e0$a;Ljava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/l1/e0$a<",
            "+TT;>;",
            "Ljava/util/List<",
            "Lf/i/a/a/e1/c0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/e1/z;->a:Lf/i/a/a/l1/e0$a;

    .line 3
    iput-object p2, p0, Lf/i/a/a/e1/z;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/e1/z;->a:Lf/i/a/a/l1/e0$a;

    invoke-interface {v0, p1, p2}, Lf/i/a/a/l1/e0$a;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/e1/y;

    .line 2
    iget-object p2, p0, Lf/i/a/a/e1/z;->b:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lf/i/a/a/e1/z;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Lf/i/a/a/e1/y;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/a/a/e1/y;

    :cond_1
    :goto_0
    return-object p1
.end method
