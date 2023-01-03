.class public Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Holder;
.super Ljava/lang/Object;
.source "VideoPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static holder:Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;-><init>(Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$1;)V

    sput-object v0, Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager$Holder;->holder:Lchuangyuan/ycj/videolibrary/video/VideoPlayerManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
