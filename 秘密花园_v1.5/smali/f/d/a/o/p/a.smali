.class public abstract Lf/d/a/o/p/a;
.super Ljava/lang/Object;
.source "ImageDecoderResourceDecoder.java"

# interfaces
.implements Lf/d/a/o/j;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1c
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d/a/o/j<",
        "Landroid/graphics/ImageDecoder$Source;",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/p/c/s;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lf/d/a/o/p/c/s;->a()Lf/d/a/o/p/c/s;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/o/p/a;->a:Lf/d/a/o/p/c/s;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILf/d/a/o/h;)Lf/d/a/o/n/w;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lf/d/a/o/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    invoke-virtual {p0, p1, p2, p3, p4}, Lf/d/a/o/p/a;->c(Landroid/graphics/ImageDecoder$Source;IILf/d/a/o/h;)Lf/d/a/o/n/w;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Lf/d/a/o/h;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    const/4 p1, 0x1

    return p1
.end method

.method public final c(Landroid/graphics/ImageDecoder$Source;IILf/d/a/o/h;)Lf/d/a/o/n/w;
    .locals 9
    .param p1    # Landroid/graphics/ImageDecoder$Source;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lf/d/a/o/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ImageDecoder$Source;",
            "II",
            "Lf/d/a/o/h;",
            ")",
            "Lf/d/a/o/n/w<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lf/d/a/o/p/c/n;->f:Lf/d/a/o/g;

    invoke-virtual {p4, v0}, Lf/d/a/o/h;->c(Lf/d/a/o/g;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lf/d/a/o/b;

    .line 2
    sget-object v0, Lf/d/a/o/p/c/m;->f:Lf/d/a/o/g;

    invoke-virtual {p4, v0}, Lf/d/a/o/h;->c(Lf/d/a/o/g;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lf/d/a/o/p/c/m;

    .line 3
    sget-object v0, Lf/d/a/o/p/c/n;->i:Lf/d/a/o/g;

    .line 4
    invoke-virtual {p4, v0}, Lf/d/a/o/h;->c(Lf/d/a/o/g;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lf/d/a/o/p/c/n;->i:Lf/d/a/o/g;

    .line 5
    invoke-virtual {p4, v0}, Lf/d/a/o/h;->c(Lf/d/a/o/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 6
    :goto_0
    sget-object v0, Lf/d/a/o/p/c/n;->g:Lf/d/a/o/g;

    invoke-virtual {p4, v0}, Lf/d/a/o/h;->c(Lf/d/a/o/g;)Ljava/lang/Object;

    move-result-object p4

    move-object v8, p4

    check-cast v8, Lf/d/a/o/i;

    .line 7
    new-instance p4, Lf/d/a/o/p/a$a;

    move-object v1, p4

    move-object v2, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v8}, Lf/d/a/o/p/a$a;-><init>(Lf/d/a/o/p/a;IIZLf/d/a/o/b;Lf/d/a/o/p/c/m;Lf/d/a/o/i;)V

    move-object p2, p0

    check-cast p2, Lf/d/a/o/p/c/d;

    .line 8
    invoke-static {p1, p4}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p3, 0x2

    const-string p4, "BitmapImageDecoder"

    .line 9
    invoke-static {p4, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 12
    :cond_1
    new-instance p3, Lf/d/a/o/p/c/e;

    iget-object p2, p2, Lf/d/a/o/p/c/d;->b:Lf/d/a/o/n/b0/d;

    invoke-direct {p3, p1, p2}, Lf/d/a/o/p/c/e;-><init>(Landroid/graphics/Bitmap;Lf/d/a/o/n/b0/d;)V

    return-object p3
.end method
