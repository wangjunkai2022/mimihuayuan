.class public final Lf/d/a/o/n/a$b;
.super Ljava/lang/ref/WeakReference;
.source "ActiveResources.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lf/d/a/o/n/q<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/f;

.field public final b:Z

.field public c:Lf/d/a/o/n/w;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/n/w<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/d/a/o/f;Lf/d/a/o/n/q;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0
    .param p1    # Lf/d/a/o/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/n/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/ref/ReferenceQueue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/f;",
            "Lf/d/a/o/n/q<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lf/d/a/o/n/q<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-string p3, "Argument must not be null"

    .line 2
    invoke-static {p1, p3}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lf/d/a/o/n/a$b;->a:Lf/d/a/o/f;

    .line 4
    iget-boolean p1, p2, Lf/d/a/o/n/q;->a:Z

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 5
    iget-object p1, p2, Lf/d/a/o/n/q;->c:Lf/d/a/o/n/w;

    .line 6
    invoke-static {p1, p3}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iput-object p1, p0, Lf/d/a/o/n/a$b;->c:Lf/d/a/o/n/w;

    .line 8
    iget-boolean p1, p2, Lf/d/a/o/n/q;->a:Z

    .line 9
    iput-boolean p1, p0, Lf/d/a/o/n/a$b;->b:Z

    return-void
.end method
