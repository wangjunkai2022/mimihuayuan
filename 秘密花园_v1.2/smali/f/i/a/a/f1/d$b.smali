.class public final Lf/i/a/a/f1/d$b;
.super Ljava/lang/Object;
.source "RenderTextureView.java"

# interfaces
.implements Lf/i/a/a/f1/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/f1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lf/i/a/a/f1/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/a/a/f1/d;Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/i/a/a/f1/d$b;->b:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lf/i/a/a/f1/d$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/t0;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/d$b;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/f1/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_6

    .line 3
    iget-object v1, p0, Lf/i/a/a/f1/d$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 4
    invoke-virtual {v0}, Lf/i/a/a/f1/d;->getOwnSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 8
    :goto_2
    iget-boolean v5, v0, Lf/i/a/a/f1/d;->c:Z

    const/4 v6, -0x1

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {v0}, Lf/i/a/a/f1/d;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 13
    :cond_4
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 14
    invoke-virtual {p1}, Lf/i/a/a/t0;->O()V

    .line 15
    invoke-virtual {p1}, Lf/i/a/a/t0;->H()V

    .line 16
    invoke-virtual {p1, v2, v3}, Lf/i/a/a/t0;->K(Landroid/view/Surface;Z)V

    .line 17
    invoke-virtual {p1, v6, v6}, Lf/i/a/a/t0;->E(II)V

    .line 18
    invoke-virtual {v0, v2}, Lf/i/a/a/f1/d;->setSurface(Landroid/view/Surface;)V

    goto :goto_3

    .line 19
    :cond_5
    iget-object v1, p0, Lf/i/a/a/f1/d$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    if-eqz v1, :cond_6

    .line 20
    invoke-virtual {p1}, Lf/i/a/a/t0;->O()V

    .line 21
    invoke-virtual {p1}, Lf/i/a/a/t0;->H()V

    .line 22
    invoke-virtual {p1, v1, v3}, Lf/i/a/a/t0;->K(Landroid/view/Surface;Z)V

    .line 23
    invoke-virtual {p1, v6, v6}, Lf/i/a/a/t0;->E(II)V

    .line 24
    invoke-virtual {v0, v1}, Lf/i/a/a/f1/d;->setSurface(Landroid/view/Surface;)V

    :cond_6
    :goto_3
    return-void
.end method
