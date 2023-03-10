.class public Lf/e/a/j/s/e/c/b;
.super Ljava/lang/Object;
.source "InsModelLoader.java"

# interfaces
.implements Lf/d/a/o/o/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/o/n<",
        "Lf/e/a/j/s/e/c/a;",
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
    iput-object p1, p0, Lf/e/a/j/s/e/c/b;->a:Li/b0;

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
    check-cast p1, Lf/e/a/j/s/e/c/a;

    .line 2
    new-instance p2, Lf/d/a/o/o/n$a;

    new-instance p3, Lf/d/a/t/d;

    .line 3
    iget-object p4, p1, Lf/e/a/j/s/e/c/a;->a:Ljava/lang/String;

    .line 4
    invoke-direct {p3, p4}, Lf/d/a/t/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lf/e/a/j/s/e/c/d;

    iget-object v0, p0, Lf/e/a/j/s/e/c/b;->a:Li/b0;

    new-instance v1, Lf/d/a/o/o/g;

    .line 5
    iget-object p1, p1, Lf/e/a/j/s/e/c/a;->a:Ljava/lang/String;

    .line 6
    invoke-direct {v1, p1}, Lf/d/a/o/o/g;-><init>(Ljava/lang/String;)V

    invoke-direct {p4, v0, v1}, Lf/e/a/j/s/e/c/d;-><init>(Li/f$a;Lf/d/a/o/o/g;)V

    invoke-direct {p2, p3, p4}, Lf/d/a/o/o/n$a;-><init>(Lf/d/a/o/f;Lf/d/a/o/m/d;)V

    return-object p2
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lf/e/a/j/s/e/c/a;

    const/4 p1, 0x1

    return p1
.end method
