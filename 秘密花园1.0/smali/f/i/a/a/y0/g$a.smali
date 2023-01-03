.class public Lf/i/a/a/y0/g$a;
.super Ljava/lang/Thread;
.source "SimpleDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/i/a/a/y0/g;-><init>([Lf/i/a/a/y0/e;[Lf/i/a/a/y0/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/i/a/a/y0/g;


# direct methods
.method public constructor <init>(Lf/i/a/a/y0/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/y0/g$a;->a:Lf/i/a/a/y0/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/y0/g$a;->a:Lf/i/a/a/y0/g;

    if-eqz v0, :cond_1

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lf/i/a/a/y0/g;->g()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    .line 4
    throw v0
.end method
