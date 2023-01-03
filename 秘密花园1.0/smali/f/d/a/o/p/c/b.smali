.class public Lf/d/a/o/p/c/b;
.super Ljava/lang/Object;
.source "BitmapDrawableEncoder.java"

# interfaces
.implements Lf/d/a/o/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/k<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/n/b0/d;

.field public final b:Lf/d/a/o/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/d/a/o/n/b0/d;Lf/d/a/o/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/n/b0/d;",
            "Lf/d/a/o/k<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/d/a/o/p/c/b;->a:Lf/d/a/o/n/b0/d;

    .line 3
    iput-object p2, p0, Lf/d/a/o/p/c/b;->b:Lf/d/a/o/k;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/File;Lf/d/a/o/h;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lf/d/a/o/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lf/d/a/o/n/w;

    .line 2
    iget-object v0, p0, Lf/d/a/o/p/c/b;->b:Lf/d/a/o/k;

    new-instance v1, Lf/d/a/o/p/c/e;

    invoke-interface {p1}, Lf/d/a/o/n/w;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lf/d/a/o/p/c/b;->a:Lf/d/a/o/n/b0/d;

    invoke-direct {v1, p1, v2}, Lf/d/a/o/p/c/e;-><init>(Landroid/graphics/Bitmap;Lf/d/a/o/n/b0/d;)V

    invoke-interface {v0, v1, p2, p3}, Lf/d/a/o/d;->a(Ljava/lang/Object;Ljava/io/File;Lf/d/a/o/h;)Z

    move-result p1

    return p1
.end method

.method public b(Lf/d/a/o/h;)Lf/d/a/o/c;
    .locals 1
    .param p1    # Lf/d/a/o/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/o/p/c/b;->b:Lf/d/a/o/k;

    invoke-interface {v0, p1}, Lf/d/a/o/k;->b(Lf/d/a/o/h;)Lf/d/a/o/c;

    move-result-object p1

    return-object p1
.end method
