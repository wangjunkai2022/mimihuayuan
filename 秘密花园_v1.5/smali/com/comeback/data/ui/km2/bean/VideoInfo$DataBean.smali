.class public Lcom/comeback/data/ui/km2/bean/VideoInfo$DataBean;
.super Ljava/lang/Object;
.source "VideoInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/km2/bean/VideoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field public video_info:Lcom/comeback/data/ui/km2/bean/Km2Video;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideo_info()Lcom/comeback/data/ui/km2/bean/Km2Video;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/VideoInfo$DataBean;->video_info:Lcom/comeback/data/ui/km2/bean/Km2Video;

    return-object v0
.end method

.method public setVideo_info(Lcom/comeback/data/ui/km2/bean/Km2Video;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/VideoInfo$DataBean;->video_info:Lcom/comeback/data/ui/km2/bean/Km2Video;

    return-void
.end method
