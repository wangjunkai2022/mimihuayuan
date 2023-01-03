.class public Lf/e/a/j/s/e/e/c;
.super Ljava/lang/Object;
.source "CustomModelLoader.java"

# interfaces
.implements Lf/d/a/o/o/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/o/n<",
        "Lf/e/a/j/s/e/e/a;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Li/b0;


# direct methods
.method public constructor <init>(Li/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/e/a/j/s/e/e/c;->a:Li/b0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILf/d/a/o/h;)Lf/d/a/o/o/n$a;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lf/d/a/o/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Lf/e/a/j/s/e/e/a;

    .line 2
    new-instance p2, Lf/d/a/o/o/n$a;

    new-instance p3, Lf/d/a/t/d;

    invoke-interface {p1}, Lf/e/a/j/s/e/e/a;->getUrl()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lf/d/a/t/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lf/e/a/j/s/e/e/b;

    iget-object v0, p0, Lf/e/a/j/s/e/e/c;->a:Li/b0;

    new-instance v1, Lf/d/a/o/o/g;

    invoke-interface {p1}, Lf/e/a/j/s/e/e/a;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lf/d/a/o/o/g;-><init>(Ljava/lang/String;)V

    invoke-direct {p4, v0, v1}, Lf/e/a/j/s/e/e/b;-><init>(Li/f$a;Lf/d/a/o/o/g;)V

    invoke-direct {p2, p3, p4}, Lf/d/a/o/o/n$a;-><init>(Lf/d/a/o/f;Lf/d/a/o/m/d;)V

    return-object p2
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lf/e/a/j/s/e/e/a;

    .line 2
    invoke-interface {p1}, Lf/e/a/j/s/e/e/a;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GRECAg5dTUsH"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lf/e/a/j/s/e/e/a;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GQcNB0UHQUc="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
