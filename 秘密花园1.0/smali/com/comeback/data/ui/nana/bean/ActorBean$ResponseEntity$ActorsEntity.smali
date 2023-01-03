.class public Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;
.super Ljava/lang/Object;
.source "ActorBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActorsEntity"
.end annotation


# instance fields
.field public actor_id:I

.field public actor_like:Z

.field public actor_name:Ljava/lang/String;

.field public actor_url:Ljava/lang/String;

.field public final synthetic this$1:Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;->this$1:Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActor_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;->actor_id:I

    return v0
.end method

.method public getActor_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;->actor_name:Ljava/lang/String;

    return-object v0
.end method

.method public getActor_url()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/j/g0/m/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;->actor_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActor_like()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;->actor_like:Z

    return v0
.end method

.method public setActor_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;->actor_id:I

    return-void
.end method

.method public setActor_like(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;->actor_like:Z

    return-void
.end method

.method public setActor_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;->actor_name:Ljava/lang/String;

    return-void
.end method

.method public setActor_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;->actor_url:Ljava/lang/String;

    return-void
.end method
