.class public Lf/i/a/a/f1/d$c;
.super Ljava/lang/Object;
.source "RenderTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/f1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lf/i/a/a/f1/d;


# direct methods
.method public constructor <init>(Lf/i/a/a/f1/d;Lf/i/a/a/f1/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/f1/d$c;->a:Lf/i/a/a/f1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/d$c;->a:Lf/i/a/a/f1/d;

    .line 2
    iget-object v1, v0, Lf/i/a/a/f1/d;->a:Lf/i/a/a/f1/a$a;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lf/i/a/a/f1/d$b;

    invoke-direct {v2, v0, p1}, Lf/i/a/a/f1/d$b;-><init>(Lf/i/a/a/f1/d;Landroid/graphics/SurfaceTexture;)V

    check-cast v1, Lf/i/a/a/k1/c$a;

    invoke-virtual {v1, v2, p2, p3}, Lf/i/a/a/k1/c$a;->a(Lf/i/a/a/f1/a$b;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf/i/a/a/f1/d$c;->a:Lf/i/a/a/f1/d;

    .line 2
    iget-object v1, v0, Lf/i/a/a/f1/d;->a:Lf/i/a/a/f1/a$a;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 5
    check-cast v1, Lf/i/a/a/k1/c$a;

    const/4 p1, 0x0

    .line 6
    sget-object v0, Lf/i/a/a/k1/c;->t:Ljava/lang/String;

    .line 7
    iget-object v0, v1, Lf/i/a/a/k1/c$a;->a:Lf/i/a/a/k1/c;

    iget-object v0, v0, Lf/i/a/a/k1/e;->c:Lf/i/a/a/f1/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    iget-object v0, v1, Lf/i/a/a/k1/c$a;->a:Lf/i/a/a/k1/c;

    .line 9
    iput-object p1, v0, Lf/i/a/a/k1/c;->r:Lf/i/a/a/f1/a$b;

    .line 10
    :cond_0
    iget-object p1, p0, Lf/i/a/a/f1/d$c;->a:Lf/i/a/a/f1/d;

    .line 11
    iget-boolean p1, p1, Lf/i/a/a/f1/d;->c:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lf/i/a/a/f1/d$c;->a:Lf/i/a/a/f1/d;

    .line 2
    iget-object p3, p2, Lf/i/a/a/f1/d;->a:Lf/i/a/a/f1/a$a;

    if-eqz p3, :cond_0

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 5
    check-cast p3, Lf/i/a/a/k1/c$a;

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
