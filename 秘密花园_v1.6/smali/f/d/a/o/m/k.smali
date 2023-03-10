.class public final Lf/d/a/o/m/k;
.super Ljava/lang/Object;
.source "InputStreamRewinder.java"

# interfaces
.implements Lf/d/a/o/m/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/o/m/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/m/e<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/p/c/v;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lf/d/a/o/n/b0/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/d/a/o/p/c/v;

    invoke-direct {v0, p1, p2}, Lf/d/a/o/p/c/v;-><init>(Ljava/io/InputStream;Lf/d/a/o/n/b0/b;)V

    iput-object v0, p0, Lf/d/a/o/m/k;->a:Lf/d/a/o/p/c/v;

    const/high16 p1, 0x500000

    .line 3
    invoke-virtual {v0, p1}, Lf/d/a/o/p/c/v;->mark(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/o/m/k;->a:Lf/d/a/o/p/c/v;

    invoke-virtual {v0}, Lf/d/a/o/p/c/v;->reset()V

    .line 2
    iget-object v0, p0, Lf/d/a/o/m/k;->a:Lf/d/a/o/p/c/v;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/d/a/o/m/k;->a:Lf/d/a/o/p/c/v;

    invoke-virtual {v0}, Lf/d/a/o/p/c/v;->e()V

    return-void
.end method
