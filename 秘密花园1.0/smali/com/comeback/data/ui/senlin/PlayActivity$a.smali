.class public Lcom/comeback/data/ui/senlin/PlayActivity$a;
.super Lm/j;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/senlin/PlayActivity;->l(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/senlin/bean/SenlinDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/senlin/PlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/senlin/PlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/senlin/PlayActivity$a;->e:Lcom/comeback/data/ui/senlin/PlayActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/PlayActivity$a;->e:Lcom/comeback/data/ui/senlin/PlayActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/senlin/bean/SenlinDetail$ListEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/senlin/bean/SenlinDetail$ListEntity;->getVod_play_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/comeback/data/ui/senlin/PlayActivity;->n(Lcom/comeback/data/ui/senlin/PlayActivity;Ljava/lang/String;)V

    return-void
.end method
