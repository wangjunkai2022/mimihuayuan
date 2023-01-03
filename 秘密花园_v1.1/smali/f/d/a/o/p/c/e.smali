.class public Lf/d/a/o/p/c/e;
.super Ljava/lang/Object;
.source "BitmapResource.java"

# interfaces
.implements Lf/d/a/o/n/w;
.implements Lf/d/a/o/n/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/n/w<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lf/d/a/o/n/s;"
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Lf/d/a/o/n/b0/d;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lf/d/a/o/n/b0/d;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/n/b0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    .line 2
    invoke-static {p1, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lf/d/a/o/p/c/e;->a:Landroid/graphics/Bitmap;

    const-string p1, "BitmapPool must not be null"

    .line 3
    invoke-static {p2, p1}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lf/d/a/o/n/b0/d;

    iput-object p2, p0, Lf/d/a/o/p/c/e;->b:Lf/d/a/o/n/b0/d;

    return-void
.end method

.method public static c(Landroid/graphics/Bitmap;Lf/d/a/o/n/b0/d;)Lf/d/a/o/p/c/e;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lf/d/a/o/n/b0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lf/d/a/o/p/c/e;

    invoke-direct {v0, p0, p1}, Lf/d/a/o/p/c/e;-><init>(Landroid/graphics/Bitmap;Lf/d/a/o/n/b0/d;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/d/a/o/p/c/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/d/a/o/p/c/e;->b:Lf/d/a/o/n/b0/d;

    iget-object v1, p0, Lf/d/a/o/p/c/e;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lf/d/a/o/n/b0/d;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/o/p/c/e;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/d/a/o/p/c/e;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lf/d/a/u/i;->f(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
