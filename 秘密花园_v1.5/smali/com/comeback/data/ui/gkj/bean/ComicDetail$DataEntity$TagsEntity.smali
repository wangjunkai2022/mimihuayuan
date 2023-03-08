.class public Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$TagsEntity;
.super Ljava/lang/Object;
.source "ComicDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagsEntity"
.end annotation


# instance fields
.field public id:I

.field public tagName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$TagsEntity;->this$0:Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$TagsEntity;->id:I

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$TagsEntity;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$TagsEntity;->id:I

    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$TagsEntity;->tagName:Ljava/lang/String;

    return-void
.end method
