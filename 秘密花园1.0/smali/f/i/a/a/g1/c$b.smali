.class public final Lf/i/a/a/g1/c$b;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RequirementsWatcher.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/g1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lf/i/a/a/g1/c;


# direct methods
.method public constructor <init>(Lf/i/a/a/g1/c;Lf/i/a/a/g1/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/g1/c$b;->a:Lf/i/a/a/g1/c;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/g1/c$b;->a:Lf/i/a/a/g1/c;

    .line 2
    iget-object v1, v0, Lf/i/a/a/g1/c;->g:Lf/i/a/a/g1/c$b;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lf/i/a/a/g1/c;->a(Lf/i/a/a/g1/c;)V

    :cond_0
    return-void
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/i/a/a/g1/c$b;->a:Lf/i/a/a/g1/c;

    .line 2
    iget-object p1, p1, Lf/i/a/a/g1/c;->d:Landroid/os/Handler;

    .line 3
    new-instance v0, Lf/i/a/a/g1/a;

    invoke-direct {v0, p0}, Lf/i/a/a/g1/a;-><init>(Lf/i/a/a/g1/c$b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/i/a/a/g1/c$b;->a:Lf/i/a/a/g1/c;

    .line 2
    iget-object p1, p1, Lf/i/a/a/g1/c;->d:Landroid/os/Handler;

    .line 3
    new-instance v0, Lf/i/a/a/g1/a;

    invoke-direct {v0, p0}, Lf/i/a/a/g1/a;-><init>(Lf/i/a/a/g1/c$b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
