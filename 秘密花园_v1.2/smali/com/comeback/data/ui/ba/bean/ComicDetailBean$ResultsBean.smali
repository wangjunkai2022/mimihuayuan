.class public Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;
.super Ljava/lang/Object;
.source "ComicDetailBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ba/bean/ComicDetailBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;
    }
.end annotation


# instance fields
.field public comic_episodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComic_episodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;->comic_episodes:Ljava/util/List;

    return-object v0
.end method

.method public setComic_episodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean$ComicEpisodesBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/ComicDetailBean$ResultsBean;->comic_episodes:Ljava/util/List;

    return-void
.end method
