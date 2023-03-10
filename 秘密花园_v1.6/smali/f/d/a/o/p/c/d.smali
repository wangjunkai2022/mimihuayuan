.class public final Lf/d/a/o/p/c/d;
.super Lf/d/a/o/p/a;
.source "BitmapImageDecoderResourceDecoder.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1c
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/d/a/o/p/a<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lf/d/a/o/n/b0/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/d/a/o/p/a;-><init>()V

    .line 2
    new-instance v0, Lf/d/a/o/n/b0/e;

    invoke-direct {v0}, Lf/d/a/o/n/b0/e;-><init>()V

    iput-object v0, p0, Lf/d/a/o/p/c/d;->b:Lf/d/a/o/n/b0/d;

    return-void
.end method
