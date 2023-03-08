.class public Lc/a/a/c/b$b;
.super Lc/a/a/c/a$a;
.source "ResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lc/a/a/c/b;


# direct methods
.method public constructor <init>(Lc/a/a/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/a/a/c/b$b;->a:Lc/a/a/c/b;

    invoke-direct {p0}, Lc/a/a/c/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public g(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/a/a/c/b$b;->a:Lc/a/a/c/b;

    iget-object v1, v0, Lc/a/a/c/b;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2
    new-instance v2, Lc/a/a/c/b$c;

    invoke-direct {v2, v0, p1, p2}, Lc/a/a/c/b$c;-><init>(Lc/a/a/c/b;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lc/a/a/c/b;->a(ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method
