.class public final Lf/i/a/a/n1/m$c;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/n1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lf/i/a/a/n1/m;


# direct methods
.method public constructor <init>(Lf/i/a/a/n1/m;Landroid/media/MediaCodec;Lf/i/a/a/n1/m$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/n1/m$c;->a:Lf/i/a/a/n1/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 0
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lf/i/a/a/n1/m$c;->a:Lf/i/a/a/n1/m;

    iget-object p4, p1, Lf/i/a/a/n1/m;->W0:Lf/i/a/a/n1/m$c;

    if-eq p0, p4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p2, p3}, Lf/i/a/a/n1/m;->z0(J)V

    return-void
.end method
