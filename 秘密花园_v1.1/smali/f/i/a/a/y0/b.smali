.class public final Lf/i/a/a/y0/b;
.super Ljava/lang/Object;
.source "CryptoInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/y0/b$b;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[I

.field public c:[I

.field public final d:Landroid/media/MediaCodec$CryptoInfo;

.field public final e:Lf/i/a/a/y0/b$b;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Lf/i/a/a/y0/b;->d:Landroid/media/MediaCodec$CryptoInfo;

    .line 3
    sget v1, Lf/i/a/a/m1/h0;->a:I

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v1, v3, :cond_0

    new-instance v1, Lf/i/a/a/y0/b$b;

    invoke-direct {v1, v0, v2}, Lf/i/a/a/y0/b$b;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lf/i/a/a/y0/b$a;)V

    move-object v2, v1

    :cond_0
    iput-object v2, p0, Lf/i/a/a/y0/b;->e:Lf/i/a/a/y0/b$b;

    return-void
.end method
