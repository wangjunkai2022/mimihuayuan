.class public Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger$Holder;
.super Ljava/lang/Object;
.source "ExoDownLoadManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static h:Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;

    invoke-direct {v0}, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;-><init>()V

    sput-object v0, Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger$Holder;->h:Lchuangyuan/ycj/videolibrary/offline/ExoDownLoadManger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
