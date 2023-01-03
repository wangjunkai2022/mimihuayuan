.class public final Lf/d/a/o/p/h/c;
.super Ljava/lang/Object;
.source "DrawableBytesTranscoder.java"

# interfaces
.implements Lf/d/a/o/p/h/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/p/h/e<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/n/b0/d;

.field public final b:Lf/d/a/o/p/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/p/h/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field public final c:Lf/d/a/o/p/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/p/h/e<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/d/a/o/n/b0/d;Lf/d/a/o/p/h/e;Lf/d/a/o/p/h/e;)V
    .locals 0
    .param p1    # Lf/d/a/o/n/b0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/p/h/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lf/d/a/o/p/h/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/n/b0/d;",
            "Lf/d/a/o/p/h/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Lf/d/a/o/p/h/e<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/d/a/o/p/h/c;->a:Lf/d/a/o/n/b0/d;

    .line 3
    iput-object p2, p0, Lf/d/a/o/p/h/c;->b:Lf/d/a/o/p/h/e;

    .line 4
    iput-object p3, p0, Lf/d/a/o/p/h/c;->c:Lf/d/a/o/p/h/e;

    return-void
.end method


# virtual methods
.method public a(Lf/d/a/o/n/w;Lf/d/a/o/h;)Lf/d/a/o/n/w;
    .locals 2
    .param p1    # Lf/d/a/o/n/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/n/w<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lf/d/a/o/h;",
            ")",
            "Lf/d/a/o/n/w<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lf/d/a/o/n/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lf/d/a/o/p/h/c;->b:Lf/d/a/o/p/h/e;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lf/d/a/o/p/h/c;->a:Lf/d/a/o/n/b0/d;

    invoke-static {v0, v1}, Lf/d/a/o/p/c/e;->c(Landroid/graphics/Bitmap;Lf/d/a/o/n/b0/d;)Lf/d/a/o/p/c/e;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0, p2}, Lf/d/a/o/p/h/e;->a(Lf/d/a/o/n/w;Lf/d/a/o/h;)Lf/d/a/o/n/w;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    instance-of v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lf/d/a/o/p/h/c;->c:Lf/d/a/o/p/h/e;

    invoke-interface {v0, p1, p2}, Lf/d/a/o/p/h/e;->a(Lf/d/a/o/n/w;Lf/d/a/o/h;)Lf/d/a/o/n/w;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
