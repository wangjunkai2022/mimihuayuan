.class public Lcom/comeback/data/ui/lnkl/bean/VideoInfo;
.super Lf/e/a/f/k;
.source "VideoInfo.java"


# instance fields
.field public imgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public torrentUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getImgs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lnkl/bean/VideoInfo;->imgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTorrentUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lnkl/bean/VideoInfo;->torrentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setImgs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lnkl/bean/VideoInfo;->imgs:Ljava/util/ArrayList;

    return-void
.end method

.method public setTorrentUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lnkl/bean/VideoInfo;->torrentUrl:Ljava/lang/String;

    return-void
.end method
