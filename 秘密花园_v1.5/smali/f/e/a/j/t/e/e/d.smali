.class public Lf/e/a/j/t/e/e/d;
.super Ljava/lang/Object;
.source "CustomModelLoaderFactory.java"

# interfaces
.implements Lf/d/a/o/o/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/o/o<",
        "Lf/e/a/j/t/e/e/a;",
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
    iput-object p1, p0, Lf/e/a/j/t/e/e/d;->a:Li/b0;

    return-void
.end method


# virtual methods
.method public b(Lf/d/a/o/o/r;)Lf/d/a/o/o/n;
    .locals 1
    .param p1    # Lf/d/a/o/o/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/o/r;",
            ")",
            "Lf/d/a/o/o/n<",
            "Lf/e/a/j/t/e/e/a;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lf/e/a/j/t/e/e/c;

    iget-object v0, p0, Lf/e/a/j/t/e/e/d;->a:Li/b0;

    invoke-direct {p1, v0}, Lf/e/a/j/t/e/e/c;-><init>(Li/b0;)V

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
