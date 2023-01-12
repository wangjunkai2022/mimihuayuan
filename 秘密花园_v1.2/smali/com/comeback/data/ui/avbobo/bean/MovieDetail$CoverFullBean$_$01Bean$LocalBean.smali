.class public Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean$LocalBean;
.super Ljava/lang/Object;
.source "MovieDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalBean"
.end annotation


# instance fields
.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean$LocalBean;->path:Ljava/lang/String;

    const-string v1, "RxAGEgIWTh0eFgA="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean$LocalBean;->path:Ljava/lang/String;

    const-string v1, "GBEKCgwfXBwaC1UAHRk="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean$LocalBean;->path:Ljava/lang/String;

    const-string v1, "GBERB1lcTwE="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean$LocalBean;->path:Ljava/lang/String;

    const-string v1, "GBEKCgwfXBwZEw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XxYXFBhJFhwFSF0FFwgMWhkBDAlEFldeXBJaEw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean$LocalBean;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XxYXFBhJFhwaC1UAHRlNCVgADBcfAVZdFFUESRsFDkRSDA5LCRE="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean$LocalBean;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/MovieDetail$CoverFullBean$_$01Bean$LocalBean;->path:Ljava/lang/String;

    return-void
.end method
