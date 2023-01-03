.class public Lcom/comeback/data/ui/hm/bean/ChapterInfo;
.super Lf/e/a/f/j;
.source "ChapterInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;
    }
.end annotation


# instance fields
.field public chapterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;",
            ">;"
        }
    .end annotation
.end field

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getChapterList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hm/bean/ChapterInfo;->chapterList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hm/bean/ChapterInfo;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setChapterList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hm/bean/ChapterInfo;->chapterList:Ljava/util/ArrayList;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hm/bean/ChapterInfo;->state:Ljava/lang/String;

    return-void
.end method
