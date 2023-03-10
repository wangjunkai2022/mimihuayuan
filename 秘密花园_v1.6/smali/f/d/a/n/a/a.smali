.class public final Lf/d/a/n/a/a;
.super Lf/d/a/q/d;
.source "OkHttpLibraryGlideModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/d/a/q/d;-><init>()V

    return-void
.end method


# virtual methods
.method public registerComponents(Landroid/content/Context;Lf/d/a/c;Lf/d/a/h;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lf/d/a/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-class p1, Lf/d/a/o/o/g;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lf/d/a/n/a/c$a;

    invoke-direct {v0}, Lf/d/a/n/a/c$a;-><init>()V

    invoke-virtual {p3, p1, p2, v0}, Lf/d/a/h;->i(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    return-void
.end method
