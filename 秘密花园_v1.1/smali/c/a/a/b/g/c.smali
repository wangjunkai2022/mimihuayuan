.class public abstract Lc/a/a/b/g/c;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/b/g/c$b;,
        Lc/a/a/b/g/c$a;
    }
.end annotation


# instance fields
.field public a:Lc/a/a/b/g/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/a/a/b/g/c$a;

    invoke-direct {v0, p0}, Lc/a/a/b/g/c$a;-><init>(Lc/a/a/b/g/c;)V

    .line 3
    new-instance v1, Lc/a/a/b/g/g;

    invoke-direct {v1, v0}, Lc/a/a/b/g/g;-><init>(Lc/a/a/b/g/f;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    return-void
.end method
