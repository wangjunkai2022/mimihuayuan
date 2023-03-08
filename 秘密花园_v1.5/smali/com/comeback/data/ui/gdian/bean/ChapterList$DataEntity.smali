.class public Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity;
.super Ljava/lang/Object;
.source "ChapterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gdian/bean/ChapterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity$ListEntity;,
        Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity$PagesEntity;
    }
.end annotation


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity$ListEntity;",
            ">;"
        }
    .end annotation
.end field

.field public pages:Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity$PagesEntity;

.field public final synthetic this$0:Lcom/comeback/data/ui/gdian/bean/ChapterList;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gdian/bean/ChapterList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity;->this$0:Lcom/comeback/data/ui/gdian/bean/ChapterList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity$ListEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPages()Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity$PagesEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity;->pages:Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity$PagesEntity;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity$ListEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity;->list:Ljava/util/List;

    return-void
.end method

.method public setPages(Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity$PagesEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity;->pages:Lcom/comeback/data/ui/gdian/bean/ChapterList$DataEntity$PagesEntity;

    return-void
.end method
