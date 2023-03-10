.class public Lf/i/a/a/g1/c$c;
.super Landroid/content/BroadcastReceiver;
.source "RequirementsWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/g1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lf/i/a/a/g1/c;


# direct methods
.method public constructor <init>(Lf/i/a/a/g1/c;Lf/i/a/a/g1/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/g1/c$c;->a:Lf/i/a/a/g1/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/i/a/a/g1/c$c;->a:Lf/i/a/a/g1/c;

    .line 3
    iget-object p2, p1, Lf/i/a/a/g1/c;->c:Lf/i/a/a/g1/b;

    iget-object v0, p1, Lf/i/a/a/g1/c;->a:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lf/i/a/a/g1/b;->a(Landroid/content/Context;)I

    move-result p2

    .line 4
    iget v0, p1, Lf/i/a/a/g1/c;->f:I

    if-eq v0, p2, :cond_0

    .line 5
    iput p2, p1, Lf/i/a/a/g1/c;->f:I

    .line 6
    iget-object v0, p1, Lf/i/a/a/g1/c;->b:Lf/i/a/a/g1/c$d;

    invoke-interface {v0, p1, p2}, Lf/i/a/a/g1/c$d;->a(Lf/i/a/a/g1/c;I)V

    :cond_0
    return-void
.end method
