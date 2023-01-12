.class public Lm/l/b/b;
.super Lm/g;
.source "LooperScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/l/b/b$b;,
        Lm/l/b/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm/g;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lm/l/b/b;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Lm/g$a;
    .locals 2

    .line 1
    new-instance v0, Lm/l/b/b$a;

    iget-object v1, p0, Lm/l/b/b;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lm/l/b/b$a;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
