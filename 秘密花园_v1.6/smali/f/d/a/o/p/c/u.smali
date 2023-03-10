.class public final Lf/d/a/o/p/c/u;
.super Ljava/lang/Object;
.source "LazyBitmapDrawableResource.java"

# interfaces
.implements Lf/d/a/o/n/w;
.implements Lf/d/a/o/n/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/n/w<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lf/d/a/o/n/s;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;

.field public final b:Lf/d/a/o/n/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/n/w<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lf/d/a/o/n/w;)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/n/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lf/d/a/o/n/w<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lf/d/a/o/p/c/u;->a:Landroid/content/res/Resources;

    .line 4
    invoke-static {p2, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lf/d/a/o/p/c/u;->b:Lf/d/a/o/n/w;

    return-void
.end method

.method public static c(Landroid/content/res/Resources;Lf/d/a/o/n/w;)Lf/d/a/o/n/w;
    .locals 1
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lf/d/a/o/n/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lf/d/a/o/n/w<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lf/d/a/o/n/w<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lf/d/a/o/p/c/u;

    invoke-direct {v0, p0, p1}, Lf/d/a/o/p/c/u;-><init>(Landroid/content/res/Resources;Lf/d/a/o/n/w;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/d/a/o/p/c/u;->b:Lf/d/a/o/n/w;

    instance-of v1, v0, Lf/d/a/o/n/s;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lf/d/a/o/n/s;

    invoke-interface {v0}, Lf/d/a/o/n/s;->a()V

    :cond_0
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
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/d/a/o/p/c/u;->b:Lf/d/a/o/n/w;

    invoke-interface {v0}, Lf/d/a/o/n/w;->d()V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lf/d/a/o/p/c/u;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lf/d/a/o/p/c/u;->b:Lf/d/a/o/n/w;

    invoke-interface {v2}, Lf/d/a/o/n/w;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/d/a/o/p/c/u;->b:Lf/d/a/o/n/w;

    invoke-interface {v0}, Lf/d/a/o/n/w;->getSize()I

    move-result v0

    return v0
.end method
