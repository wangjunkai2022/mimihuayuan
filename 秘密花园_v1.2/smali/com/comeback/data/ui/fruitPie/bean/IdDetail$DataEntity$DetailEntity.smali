.class public Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;
.super Ljava/lang/Object;
.source "IdDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetailEntity"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public img_url:Ljava/lang/String;

.field public final synthetic this$1:Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;->this$1:Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;->img_url:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public setImg_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;->img_url:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/bean/IdDetail$DataEntity$DetailEntity;->url:Ljava/lang/String;

    return-void
.end method
