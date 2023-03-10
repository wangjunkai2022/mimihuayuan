.class public final Lf/i/a/a/g1/c;
.super Ljava/lang/Object;
.source "RequirementsWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/g1/c$b;,
        Lf/i/a/a/g1/c$c;,
        Lf/i/a/a/g1/c$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lf/i/a/a/g1/c$d;

.field public final c:Lf/i/a/a/g1/b;

.field public final d:Landroid/os/Handler;

.field public e:Lf/i/a/a/g1/c$c;

.field public f:I

.field public g:Lf/i/a/a/g1/c$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/i/a/a/g1/c$d;Lf/i/a/a/g1/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/g1/c;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lf/i/a/a/g1/c;->b:Lf/i/a/a/g1/c$d;

    .line 4
    iput-object p3, p0, Lf/i/a/a/g1/c;->c:Lf/i/a/a/g1/b;

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lf/i/a/a/m1/h0;->D()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lf/i/a/a/g1/c;->d:Landroid/os/Handler;

    return-void
.end method

.method public static a(Lf/i/a/a/g1/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/g1/c;->c:Lf/i/a/a/g1/b;

    iget-object v1, p0, Lf/i/a/a/g1/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lf/i/a/a/g1/b;->a(Landroid/content/Context;)I

    move-result v0

    .line 2
    iget v1, p0, Lf/i/a/a/g1/c;->f:I

    if-eq v1, v0, :cond_0

    .line 3
    iput v0, p0, Lf/i/a/a/g1/c;->f:I

    .line 4
    iget-object v1, p0, Lf/i/a/a/g1/c;->b:Lf/i/a/a/g1/c$d;

    invoke-interface {v1, p0, v0}, Lf/i/a/a/g1/c$d;->a(Lf/i/a/a/g1/c;I)V

    :cond_0
    return-void
.end method
