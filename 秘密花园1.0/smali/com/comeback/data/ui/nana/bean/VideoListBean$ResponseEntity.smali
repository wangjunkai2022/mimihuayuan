.class public Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;
.super Ljava/lang/Object;
.source "VideoListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/nana/bean/VideoListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponseEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;
    }
.end annotation


# instance fields
.field public actor_cup:Ljava/lang/String;

.field public page:I

.field public final synthetic this$0:Lcom/comeback/data/ui/nana/bean/VideoListBean;

.field public total_results:I

.field public videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/bean/VideoListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;->this$0:Lcom/comeback/data/ui/nana/bean/VideoListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActor_cup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;->actor_cup:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;->page:I

    return v0
.end method

.method public getTotal_results()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;->total_results:I

    return v0
.end method

.method public getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;->videos:Ljava/util/List;

    return-object v0
.end method

.method public setActor_cup(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;->actor_cup:Ljava/lang/String;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;->page:I

    return-void
.end method

.method public setTotal_results(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;->total_results:I

    return-void
.end method

.method public setVideos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity;->videos:Ljava/util/List;

    return-void
.end method
