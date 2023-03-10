.class public Lf/d/a/o/p/g/d;
.super Lf/d/a/o/p/e/b;
.source "GifDrawableResource.java"

# interfaces
.implements Lf/d/a/o/n/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/d/a/o/p/e/b<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;",
        "Lf/d/a/o/n/s;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/d/a/o/p/e/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/d/a/o/p/e/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->b()Landroid/graphics/Bitmap;

    move-result-object v0

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
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    return-object v0
.end method

.method public d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/d/a/o/p/e/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 2
    iget-object v0, p0, Lf/d/a/o/p/e/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->d:Z

    .line 4
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->a:Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;->a:Lf/d/a/o/p/g/f;

    .line 5
    iget-object v2, v0, Lf/d/a/o/p/g/f;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 6
    iget-object v2, v0, Lf/d/a/o/p/g/f;->m:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 7
    iget-object v4, v0, Lf/d/a/o/p/g/f;->e:Lf/d/a/o/n/b0/d;

    invoke-interface {v4, v2}, Lf/d/a/o/n/b0/d;->b(Landroid/graphics/Bitmap;)V

    .line 8
    iput-object v3, v0, Lf/d/a/o/p/g/f;->m:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v0, Lf/d/a/o/p/g/f;->f:Z

    .line 10
    iget-object v2, v0, Lf/d/a/o/p/g/f;->j:Lf/d/a/o/p/g/f$a;

    if-eqz v2, :cond_1

    .line 11
    iget-object v4, v0, Lf/d/a/o/p/g/f;->d:Lf/d/a/j;

    invoke-virtual {v4, v2}, Lf/d/a/j;->m(Lf/d/a/s/h/h;)V

    .line 12
    iput-object v3, v0, Lf/d/a/o/p/g/f;->j:Lf/d/a/o/p/g/f$a;

    .line 13
    :cond_1
    iget-object v2, v0, Lf/d/a/o/p/g/f;->l:Lf/d/a/o/p/g/f$a;

    if-eqz v2, :cond_2

    .line 14
    iget-object v4, v0, Lf/d/a/o/p/g/f;->d:Lf/d/a/j;

    invoke-virtual {v4, v2}, Lf/d/a/j;->m(Lf/d/a/s/h/h;)V

    .line 15
    iput-object v3, v0, Lf/d/a/o/p/g/f;->l:Lf/d/a/o/p/g/f$a;

    .line 16
    :cond_2
    iget-object v2, v0, Lf/d/a/o/p/g/f;->n:Lf/d/a/o/p/g/f$a;

    if-eqz v2, :cond_3

    .line 17
    iget-object v4, v0, Lf/d/a/o/p/g/f;->d:Lf/d/a/j;

    invoke-virtual {v4, v2}, Lf/d/a/j;->m(Lf/d/a/s/h/h;)V

    .line 18
    iput-object v3, v0, Lf/d/a/o/p/g/f;->n:Lf/d/a/o/p/g/f$a;

    .line 19
    :cond_3
    iget-object v2, v0, Lf/d/a/o/p/g/f;->a:Lf/d/a/m/a;

    invoke-interface {v2}, Lf/d/a/m/a;->clear()V

    .line 20
    iput-boolean v1, v0, Lf/d/a/o/p/g/f;->k:Z

    return-void
.end method

.method public getSize()I
    .locals 2

    .line 1
    iget-object v0, p0, Lf/d/a/o/p/e/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 2
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->a:Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;->a:Lf/d/a/o/p/g/f;

    .line 3
    iget-object v1, v0, Lf/d/a/o/p/g/f;->a:Lf/d/a/m/a;

    invoke-interface {v1}, Lf/d/a/m/a;->f()I

    move-result v1

    iget v0, v0, Lf/d/a/o/p/g/f;->o:I

    add-int/2addr v1, v0

    return v1
.end method
