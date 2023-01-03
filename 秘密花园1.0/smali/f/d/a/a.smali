.class public final Lf/d/a/a;
.super Ljava/lang/Object;
.source "GeneratedRequestManagerFactory.java"

# interfaces
.implements Lf/d/a/p/l$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/d/a/c;Lf/d/a/p/h;Lf/d/a/p/m;Landroid/content/Context;)Lf/d/a/j;
    .locals 1
    .param p1    # Lf/d/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/p/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lf/d/a/p/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lf/e/a/i/c/c;

    invoke-direct {v0, p1, p2, p3, p4}, Lf/e/a/i/c/c;-><init>(Lf/d/a/c;Lf/d/a/p/h;Lf/d/a/p/m;Landroid/content/Context;)V

    return-object v0
.end method
