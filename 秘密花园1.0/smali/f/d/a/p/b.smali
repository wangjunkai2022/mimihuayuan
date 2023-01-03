.class public Lf/d/a/p/b;
.super Ljava/lang/Object;
.source "ApplicationLifecycle.java"

# interfaces
.implements Lf/d/a/p/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/d/a/p/i;)V
    .locals 0
    .param p1    # Lf/d/a/p/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lf/d/a/p/i;->onStart()V

    return-void
.end method

.method public b(Lf/d/a/p/i;)V
    .locals 0
    .param p1    # Lf/d/a/p/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
