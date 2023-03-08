.class public Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;
.super Ljava/lang/Object;
.source "ActorBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/nana/bean/ActorBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponseEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;
    }
.end annotation


# instance fields
.field public actors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public page:I

.field public final synthetic this$0:Lcom/comeback/data/ui/nana/bean/ActorBean;

.field public total_results:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/bean/ActorBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;->this$0:Lcom/comeback/data/ui/nana/bean/ActorBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;->actors:Ljava/util/List;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;->page:I

    return v0
.end method

.method public getTotal_results()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;->total_results:I

    return v0
.end method

.method public setActors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity$ActorsEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;->actors:Ljava/util/List;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;->page:I

    return-void
.end method

.method public setTotal_results(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/nana/bean/ActorBean$ResponseEntity;->total_results:I

    return-void
.end method
