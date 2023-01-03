.class public final Lf/i/a/a/l1/c0$g;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/l1/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/c0$f;


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/c0$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/l1/c0$g;->a:Lf/i/a/a/l1/c0$f;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/c0$g;->a:Lf/i/a/a/l1/c0$f;

    invoke-interface {v0}, Lf/i/a/a/l1/c0$f;->h()V

    return-void
.end method
