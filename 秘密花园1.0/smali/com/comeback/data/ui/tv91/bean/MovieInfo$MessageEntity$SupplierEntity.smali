.class public Lcom/comeback/data/ui/tv91/bean/MovieInfo$MessageEntity$SupplierEntity;
.super Ljava/lang/Object;
.source "MovieInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/tv91/bean/MovieInfo$MessageEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SupplierEntity"
.end annotation


# instance fields
.field public ID:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public final synthetic this$1:Lcom/comeback/data/ui/tv91/bean/MovieInfo$MessageEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/tv91/bean/MovieInfo$MessageEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/MovieInfo$MessageEntity$SupplierEntity;->this$1:Lcom/comeback/data/ui/tv91/bean/MovieInfo$MessageEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/MovieInfo$MessageEntity$SupplierEntity;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/MovieInfo$MessageEntity$SupplierEntity;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/MovieInfo$MessageEntity$SupplierEntity;->ID:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/MovieInfo$MessageEntity$SupplierEntity;->Name:Ljava/lang/String;

    return-void
.end method
